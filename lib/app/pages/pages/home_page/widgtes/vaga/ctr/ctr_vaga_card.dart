import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/residencia/residencia.dart';
import 'package:repime/app/blocs/vaga/db/vaga_db.dart';

import '../../../../../../blocs/vaga/vaga.dart';
part 'ctr_vaga_card.g.dart';

class CtrVagaCard = _CtrVagaCardBase with _$CtrVagaCard;

abstract class _CtrVagaCardBase with Store {
  @observable
  Vaga vaga;

  _CtrVagaCardBase(this.vaga);

  @observable
  bool loadingResidencia = true;

  @action
  void _setLoading(bool value) => loadingResidencia = value;

  @observable
  bool loadingThumb = true;

  @action
  void _setloadingThumb(bool value) => loadingThumb = value;

  @observable
  Residencia? dadosResidencia;

  @action
  void _setResidencia(Residencia r) => dadosResidencia = r;

  @action
  getDetalhesVaga() async {
    _setLoading(true);
    _setResidencia(await VagaDB.toDB(vaga).getDadosResidencia());
    _setLoading(false);
    await _getFoto();
  }

  @action
  Future<void> _getFoto() async {
    _setloadingThumb(true);
    var v = VagaDB.toDB(vaga);
    await v.getFotos(limit: 1);
    _setloadingThumb(false);
  }
}
