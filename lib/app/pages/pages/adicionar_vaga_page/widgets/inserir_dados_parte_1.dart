import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/global_widgets/button_text_app/button_text_app.dart';
import 'package:repime/app/global_widgets/field_app/blocs/settings_field_app.dart';
import 'package:repime/app/global_widgets/field_app/field_app.dart';
import 'package:repime/app/pages/pages/adicionar_vaga_page/ctr/ctr_adicionar_vaga_page.dart';

class InserirDadosParte1 extends StatelessWidget {
  const InserirDadosParte1({super.key, required this.ctrAdicionarVagaPage});

  final CtrAdicionarVagaPage ctrAdicionarVagaPage;

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Center(
          child: Form(
            key: ctrAdicionarVagaPage.formFieldParte1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FieldApp(
                    settingsFieldApp: SettingsFieldApp(
                  isMultLine: true,
                  ctr: ctrAdicionarVagaPage.ctrInformacoesAdicionais,
                  hintText: 'Insira informação úteis a quem a vaga possa interessar',
                  labelText: 'Informações',
                  validator: ctrAdicionarVagaPage.onValidatorInformacoes,
                  max: 200,
                )),
                SizedBox(height: _size.height * .02),
                FieldApp(
                    settingsFieldApp: SettingsFieldApp(
                        ctr: ctrAdicionarVagaPage.ctrValorMensalidade,
                        hintText: 'R\$000,00',
                        validator: ctrAdicionarVagaPage.onValidatorMensalidade,
                        labelText: 'Valor da Mensalidade',
                        isDate: true)),
              ],
            ),
          ),
        ),
        Observer(builder: (_) {
          // ignore: prefer_is_empty
          if (!(ctrAdicionarVagaPage.ctrInformacoesAdicionais.text.length > 0 &&
              // ignore: prefer_is_empty
              ctrAdicionarVagaPage.ctrInformacoesAdicionais.text.length > 0)) return Container();
          return Align(
            alignment: Alignment.bottomCenter,
            child: ButtonTextApp(text: 'Continue', onPressed: ctrAdicionarVagaPage.onTapContinue),
          );
        })
      ],
    );
  }
}
