import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/cidade/cidade.dart';
import 'package:repime/app/blocs/cidade/db/cidade_db.dart';
import 'package:repime/app/blocs/universidade/universidade.dart';

import '../../../blocs/universidade/db/universidade_db.dart';
part 'ctr_first_page.g.dart';

class CtrFirstPage = _CtrFirstPageBase with _$CtrFirstPage;

abstract class _CtrFirstPageBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) => loading = value;

  @observable
  var cidades = <Cidade>[];

  @action
  Future<void> makeGetCidades() async {
    setLoading(true);
    cidades = await CidadeDB.getCidadesFromDataBase();
    setLoading(false);
  }

  @observable
  bool _isShowUniversidadeFieldSet = false;

  @action
  void _setShowUniversidadeFieldSet(bool value) {
    print('a');
    _isShowUniversidadeFieldSet = value;
  }

  @action
  void onTapFieldCidade() {
    print('aqui');
    _setShowUniversidadeFieldSet(false);
  }

  @observable
  var universidades = <Universidade>[].asObservable();

  @computed
  bool get isShowUniversidadeField => _isShowUniversidadeFieldSet;

  @action
  Future<void> _makeGetUniversidade(Cidade cidade) async {
    setLoading(true);
    universidades = (await UniversidadeDB.getUniversidades(cidade)).asObservable();
    _setShowUniversidadeFieldSet(true);
    setLoading(false);
  }

  @observable
  var ctrTextCidade = TextEditingController();

  @action
  void onTapCardDropDownCidade(Cidade item) {
    ctrTextCidade.text = '$item';
    _makeGetUniversidade(item);
  }

  @observable
  var ctrTextUniversidade = TextEditingController();

  @action
  void onTapCardUniversidade(Universidade item) {
    ctrTextUniversidade.text = '$item';
  }

  void dispose() {
    ctrTextCidade.dispose();
    ctrTextUniversidade.dispose();
  }
}
