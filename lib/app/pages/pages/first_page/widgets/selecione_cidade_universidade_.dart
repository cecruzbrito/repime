import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/blocs/universidade/universidade.dart';
import 'package:repime/app/global_widgets/drop_down_app/drop_down_app.dart';
import 'package:repime/app/global_widgets/field_app/blocs/settings_field_app.dart';

import '../../../../blocs/cidade/cidade.dart';
import '../ctr_first_page/ctr_first_page.dart';

class SelecioneCidadeUniversidade extends StatelessWidget {
  const SelecioneCidadeUniversidade({super.key, required this.ctrFirstPage});
  final CtrFirstPage ctrFirstPage;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Form(
      key: ctrFirstPage.formField,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Observer(builder: (_) {
            return DropDrownApp<Cidade>(
                itens: ctrFirstPage.cidades,
                settings: SettingsFieldApp(
                    validator: ctrFirstPage.validatorCidade,
                    labelText: 'Cidade',
                    onTap: ctrFirstPage.onTapFieldCidade,
                    ctr: ctrFirstPage.ctrTextCidade,
                    hintText: 'Selecione a cidade que irá residir'),
                onTapCard: ctrFirstPage.onTapCardDropDownCidade,
                initiateEnable: false);
          }),
          SizedBox(height: size.height * .02),
          Observer(builder: (_) {
            if (!ctrFirstPage.isShowUniversidadeField) {
              return Container();
            }
            return DropDrownApp<Universidade>(
                itens: ctrFirstPage.universidades,
                settings: SettingsFieldApp(
                    validator: ctrFirstPage.validatorUniversidade,
                    labelText: 'Universidade',
                    ctr: ctrFirstPage.ctrTextUniversidade,
                    hintText: 'Selecione a universidade que estuda'),
                onTapCard: ctrFirstPage.onTapCardUniversidade,
                initiateEnable: false);
          })
        ],
      ),
    );
  }
}
