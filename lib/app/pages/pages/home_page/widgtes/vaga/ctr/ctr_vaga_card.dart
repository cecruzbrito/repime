import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/residencia/residencia.dart';
import 'package:repime/app/blocs/vaga/db/vaga_db.dart';

import '../../../../../../../config/routes_app/routes_app.dart';
import '../../../../../../blocs/vaga/vaga.dart';
import '../../../../detalhes_vaga_page/ctr/ctr_detalhes_vaga.dart';
part 'ctr_vaga_card.g.dart';

class CtrVagaCard = _CtrVagaCardBase with _$CtrVagaCard;

abstract class _CtrVagaCardBase with Store {
  @observable
  Vaga vaga;

  _CtrVagaCardBase(this.vaga);

  @observable
  bool loadingThumb = true;

  @action
  void _setloadingThumb(bool value) => loadingThumb = value;

  @action
  getDetalhesVaga() async => await _getFoto();

  @action
  Future<void> _getFoto() async {
    _setloadingThumb(true);
    var v = VagaDB.toDB(vaga);
    vaga = await v.getFotos(limit: 1);
    _setloadingThumb(false);
  }

  @action
  void tapInVaga() {
    Modular.get<CtrDetalhesVaga>().setVaga(vaga);
    Modular.to.pushNamed(RouteApp.detalhesVaga.name);
  }
}
