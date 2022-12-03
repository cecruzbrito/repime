import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/vaga/db/vaga_db.dart';
import 'package:repime/app/blocs/vaga/vaga.dart';
part 'perfil_locador_ctr.g.dart';

class PerfilLocadorCtr = _PerfilLocadorCtrBase with _$PerfilLocadorCtr;

abstract class _PerfilLocadorCtrBase with Store {
  _PerfilLocadorCtrBase();

  @observable
  var vagas = ObservableList<Vaga>();

  @action
  void setVagas(List<Vaga> value) => vagas = value.asObservable();

  @observable
  var ctrContato = TextEditingController();

  @action
  void setContato(String value) => ctrContato.text = value;

  @observable
  bool loading = false;

  @action
  void _setLoading(bool value) => loading = value;

  @action
  Future<void> deleteVaga(Vaga v) async {
    _setLoading(true);
    await VagaDB.deleteVaga(v.id);
    _setLoading(false);
    vagas.removeWhere((e) => e.id == v.id);
  }
}
