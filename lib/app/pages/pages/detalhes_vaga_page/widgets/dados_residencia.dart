import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/global_widgets/field_app/blocs/settings_field_app.dart';
import 'package:repime/app/global_widgets/field_app/field_app.dart';
import 'package:repime/app/pages/pages/detalhes_vaga_page/ctr/ctr_detalhes_vaga.dart';
import 'package:skeletons/skeletons.dart';

import 'dados_republica.dart';

class DadosResidencia extends StatelessWidget {
  const DadosResidencia({super.key, required this.ctr});
  final CtrDetalhesVaga ctr;
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: _size.height * .04),
      padding: EdgeInsets.symmetric(horizontal: _size.width * .05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(ctr.vaga!.mensalidadeFormatada,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: _size.height * .03,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: _size.height * .01),
                        Text(ctr.vaga!.residencia.endereco.endereco,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black26, fontSize: _size.height * .013)),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: _size.width * .03, vertical: _size.height * .01),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_size.width * .01),
                        border: Border.all(width: _size.width * .00, color: Colors.black12)),
                    margin: EdgeInsets.only(left: _size.width * .04),
                    child: Text(
                      ctr.vaga!.daysPosted,
                      style: TextStyle(fontSize: _size.height * .015),
                    ),
                  )
                ],
              ),
              DadosRepublica(ctr: ctr),
              SizedBox(height: _size.height * .04),
              FieldApp(
                  settingsFieldApp: SettingsFieldApp(
                      labelText: 'Informações', ctr: ctr.ctrInfo, isEnable: false, isMultLine: true)),
              SizedBox(height: _size.height * .04),
              Observer(builder: (_) {
                if (!ctr.loadingLocador) {
                  return FieldApp(
                      settingsFieldApp: SettingsFieldApp(
                          labelText: 'Contato', ctr: ctr.ctrContato, isEnable: false, isMultLine: true));
                }

                return SkeletonLine(
                  style: SkeletonLineStyle(
                    height: _size.height * .15,
                    borderRadius: BorderRadius.circular(_size.width * .02),
                  ),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}
