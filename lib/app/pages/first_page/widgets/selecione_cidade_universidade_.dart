import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/blocs/universidade/universidade.dart';
import 'package:repime/app/global_widgets/drop_down_app/drop_down_app.dart';
import 'package:repime/app/global_widgets/field_app/blocs/settings_field_app.dart';
import 'package:repime/app/pages/first_page/ctr_first_page/ctr_first_page.dart';

import '../../../blocs/cidade/cidade.dart';

class SelecioneCidadeUniversidade extends StatelessWidget {
  const SelecioneCidadeUniversidade({super.key, required this.ctrFirstPage});
  final CtrFirstPage ctrFirstPage;
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _size.width * .05),
      child: Column(
        children: [
          Observer(builder: (_) {
            return DropDrownApp<Cidade>(
                itens: ctrFirstPage.cidades,
                settings: SettingsFieldApp(
                    labelText: 'Cidade',
                    onTap: ctrFirstPage.onTapFieldCidade,
                    ctr: ctrFirstPage.ctrTextCidade,
                    hintText: 'Selecione a cidade que irá residir'),
                onTapCard: ctrFirstPage.onTapCardDropDownCidade,
                initiateEnable: false);
          }),
          SizedBox(height: _size.height * .02),
          Observer(builder: (_) {
            if (!ctrFirstPage.isShowUniversidadeField) {
              return Container();
            }
            return DropDrownApp<Universidade>(
                itens: ctrFirstPage.universidades,
                settings: SettingsFieldApp(
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
