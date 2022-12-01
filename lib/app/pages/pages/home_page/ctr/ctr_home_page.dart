import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/vaga/db/vaga_db.dart';
import 'package:repime/app/pages/controller/main_controller.dart';

import '../../../../blocs/vaga/vaga.dart';
part 'ctr_home_page.g.dart';

class CtrHomePage = _CtrHomePageBase with _$CtrHomePage;

abstract class _CtrHomePageBase with Store {
  @observable
  var loading = false;

  @action
  void _setLoading(bool value) => loading = value;

  @observable
  var vagas = <Vaga>[].asObservable();

  @action
  Future<void> getVagas() async {
    var cid = Modular.get<MainController>().locatarioAtual.cidade;
    _setLoading(true);
    vagas = (await VagaDB.getVagasPerCidade(cid)).asObservable();
    _setLoading(false);
  }
}
