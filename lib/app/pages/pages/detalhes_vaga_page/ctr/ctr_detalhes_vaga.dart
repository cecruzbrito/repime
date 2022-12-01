import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/vaga/db/vaga_db.dart';
import 'package:repime/app/blocs/vaga/vaga.dart';
part 'ctr_detalhes_vaga.g.dart';

class CtrDetalhesVaga = _CtrDetalhesVagaBase with _$CtrDetalhesVaga;

abstract class _CtrDetalhesVagaBase with Store {
  @observable
  Vaga vaga;

  _CtrDetalhesVagaBase(this.vaga);

  @observable
  bool loading = false;

  @action
  void _setLoading(bool value) => loading = value;

  @action
  getDetalhesVaga() async {
    _setLoading(true);
    vaga = await VagaDB.toDB(vaga).getFotos();
    _setLoading(false);
  }
}
