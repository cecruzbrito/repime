import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/vaga/db/vaga_db.dart';
import 'package:repime/app/pages/controller/main_controller.dart';
import 'package:repime/app/pages/pages/home_page/blocs/item_filter.dart';

import '../../../../blocs/vaga/vaga.dart';
part 'ctr_home_page.g.dart';

class CtrHomePage = _CtrHomePageBase with _$CtrHomePage;

abstract class _CtrHomePageBase with Store {
  @observable
  var filtros = ObservableList<ItemFilter>();

  @action
  void _setFiltros() {
    filtros = [
      ItemFilter(icon: Icons.home, tap: () => _setFiltroRep(filtros[0]), text: 'Republica'),
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
    print('VAGAS =>${_allVagas.length}');

    if (filtros.every((e) => !e.isSelected) || _allVagas.isEmpty) return _allVagas;
    var aux = <Vaga>[].asObservable();
    for (var v in _allVagas) {
      aux.add(v);
    }

    if (filtros[0].isSelected) {
      aux.removeWhere((v) => !v.residencia.tipo.isRepublica);
    }
    if (filtros[1].isSelected) {
      aux.removeWhere((v) => v.residencia.tipo.isRepublica);
    }
    if (filtros[2].isSelected) {
      aux.removeWhere((v) => v.residencia.tipo.isRepublica && v.rep!.isTrote);
    }
    if (filtros[3].isSelected) {
      aux.sort(((a, b) => double.parse(a.mensalidade).compareTo(double.parse(b.mensalidade))));
    }
    return aux.isEmpty ? <Vaga>[].asObservable() : aux.asObservable();
  }

  @observable
  var _allVagas = ObservableList<Vaga>();

  @action
  Future<void> getVagas() async {
    var c = Modular.get<MainController>().locatarioAtual.cidade;
    _setLoading(true);
    _allVagas = (await VagaDB.getVagasPerCidade(c)).asObservable();
    _allVagas.sort((a, b) => a.date.compareTo(b.date));
    _setFiltros();
    _setLoading(false);
  }
}
