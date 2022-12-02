import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/locador/db/locador_db.dart';
import 'package:repime/app/blocs/vaga/db/vaga_db.dart';
import 'package:repime/app/blocs/vaga/vaga.dart';

import '../../../../blocs/locador/locador.dart';
part 'ctr_detalhes_vaga.g.dart';

class CtrDetalhesVaga = _CtrDetalhesVagaBase with _$CtrDetalhesVaga;

abstract class _CtrDetalhesVagaBase with Store {
  @observable
  Vaga? vaga;

  @action
  void setVaga(Vaga value) => vaga = value;

  @observable
  int indexFoto = 0;

  @action
  void onChangeFotos(int value) => indexFoto = value;

  @observable
  var ctrInfo = TextEditingController();

  @observable
  var ctrContato = TextEditingController();

  @observable
  bool loading = false;

  @action
  void _setLoading(bool value) => loading = value;

  @action
  Future<void> getDetalhesVaga() async {
    ctrInfo.text = vaga!.informacoes;
    var futures = <Future>[
      Future(() async => await _getFotos()),
      Future(() async => await _getLocador()),
    ];
    await Future.wait(futures);
  }

  _getFotos() async {
    _setLoading(true);
    vaga = await VagaDB.toDB(vaga!).getFotos();
    _setLoading(false);
  }

  @observable
  Locador? l;

  @observable
  bool loadingLocador = true;

  @action
  void _setLoadingLocador(bool value) => loadingLocador = value;

  @action
  _getLocador() async {
    _setLoadingLocador(true);
    l = await LocadorDB.getLocadorFromResidencia(vaga!.idResidencia);
    ctrContato.text = l!.contato;
    _setLoadingLocador(false);
  }

  @action
  void tapInVoltar() => Modular.to.pop();
}