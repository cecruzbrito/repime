import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/util/enum_tipos_residencia/enum_tipo_residencia.dart';
import 'package:repime/app/blocs/vaga/db/vaga_db.dart';
import 'package:repime/app/pages/controller/main_controller.dart';
import 'package:repime/app/pages/pages/home_page/blocs/item/item_filter.dart';
import 'package:repime/config/routes_app/routes_app.dart';

import '../../../../blocs/vaga/vaga.dart';
import '../../../../global_widgets/snack_bar_app/snack_bar_app.dart';
import '../../perfil_locador_page/ctr/perfil_locador_ctr.dart';
part 'ctr_home_page.g.dart';

class CtrHomePage = _CtrHomePageBase with _$CtrHomePage;

abstract class _CtrHomePageBase with Store {
  @observable
  var keyScaffold = GlobalKey<ScaffoldState>();

  @observable
  var filtros = ObservableList<ItemFilter>();

  @action
  void _setFiltros() {
    filtros = [
      ItemFilter(icon: Icons.home, tap: () => _setFiltroRep(filtros[0]), text: 'República'),
      ItemFilter(icon: Icons.apartment, tap: () => _setFiltroKitNet(filtros[1]), text: 'KitNet'),
      ItemFilter(icon: Icons.celebration, tap: () => _setFiltroSemTrotes(filtros[2]), text: 'Sem trotes'),
      ItemFilter(icon: Icons.payment, tap: () => _setFiltroVagasMensalidade(filtros[3]), text: 'Mensalidade'),
    ].asObservable();
  }

  @action
  void _setFiltroRep(ItemFilter item) {
    item.setSelected(!item.isSelected);
    filtros[1].setSelected(false);
  }

  @action
  void _setFiltroKitNet(ItemFilter item) {
    filtros[0].setSelected(false);
    item.setSelected(!item.isSelected);
  }

  @action
  void _setFiltroSemTrotes(ItemFilter item) {
    filtros[0].setSelected(!item.isSelected);
    filtros[1].setSelected(false);
    item.setSelected(!item.isSelected);
  }

  @action
  void _setFiltroVagasMensalidade(ItemFilter item) {
    item.setSelected(!item.isSelected);
  }

  @observable
  var loading = false;

  @action
  void _setLoading(bool value) => loading = value;

  @computed
  ObservableList<Vaga> get vagas {
    if (filtros.every((e) => !e.isSelected) || _allVagas.isEmpty) return _allVagas;
    var aux = <Vaga>[].asObservable();
    for (var v in _allVagas) {
      aux.add(v);
    }

    if (filtros[0].isSelected) {
      aux = _removeTipo(EnumTiposResidencia.replublica).asObservable();
    }
    if (filtros[1].isSelected) {
      aux = _removeTipo(EnumTiposResidencia.kitnet).asObservable();
    }
    if (filtros[2].isSelected) {
      aux = _removeTipo(EnumTiposResidencia.replublica, semTrote: true).asObservable();
    }
    if (filtros[3].isSelected) {
      aux.sort(((a, b) => double.parse(a.mensalidade).compareTo(double.parse(b.mensalidade))));
    }
    return aux;
  }

  @action
  List<Vaga> _removeTipo(EnumTiposResidencia e, {bool? semTrote}) {
    var lVagas = <Vaga>[];
    for (var v in _allVagas) {
      if (v.residencia.tipo != e) continue;
      if (semTrote != null && e.isRepublica) {
        if (semTrote && v.rep!.isTrote) continue;
      }
      lVagas.add(v);
    }
    return lVagas;
  }

  @observable
  var _allVagas = ObservableList<Vaga>();

  @action
  Future<void> getVagas() async {
    var c = Modular.get<MainController>().locatarioAtual.cidade;
    _setLoading(true);
    try {
      _allVagas = (await VagaDB.getVagasPerCidade(c)).asObservable();
    } on Exception catch (e) {
      ScaffoldMessenger.of(keyScaffold.currentContext!).showSnackBar(
          SnackBarApp.show(text: 'Ocorreu um erro. Tente novamente.', context: keyScaffold.currentContext!));
    }
    _allVagas.sort((a, b) => a.date.compareTo(b.date));
    _setFiltros();
    _setLoading(false);
  }

  tapInPerfil() {
    if (loading) return;
    var loc = Modular.get<MainController>();
    if (loc.isValid) {
      Modular.get<PerfilLocadorCtr>()
          .setVagas(_allVagas.where((v) => v.residencia.idLocador == loc.locadorAtual.id).toList());
      Modular.to.pushNamed(RouteApp.perfilLocador.name);
    } else {
      Modular.to.pushNamed(RouteApp.loginLocador.name);
    }
  }

  tapInAddVaga() {
    if (loading) return;
    return Modular.to.pushNamed(RouteApp.adicionarVaga.name);
  }
}
