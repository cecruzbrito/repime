import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/global_widgets/loading_app/loading_app.dart';
import 'package:repime/app/pages/registrar_locador_page/ctr_registrar_locador_page/ctr_registrar_locador_page.dart';
import 'package:repime/app/pages/registrar_locador_page/widgets/parte_2/insercao_dados_parte_2.dart';
import 'package:repime/app/pages/registrar_locador_page/widgets/parte_4/insercao_dados_parte_4.dart';

import 'widgets/parte_1/insercao_dados_parte_1.dart';
import 'widgets/parte_3/insercao_dados_parte_3.dart';

class RegistrarLocadorPage extends StatefulWidget {
  const RegistrarLocadorPage({super.key});

  @override
  State<RegistrarLocadorPage> createState() => _RegistrarLocadorPageState();
}

class _RegistrarLocadorPageState extends State<RegistrarLocadorPage> {
  final CtrRegistrarLocadorPage ctr = CtrRegistrarLocadorPage();
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(
        key: ctr.keyScaffold,
        body: Observer(builder: (_) {
          if (ctr.loading) {
            return const LoadingApp();
          }
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: _size.width * .05, vertical: _size.height * .02),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 800),
                child: Observer(builder: (_) {
                  switch (ctr.atualIndex) {
                    case 0:
                      return InsercaoDadosParte1(ctrRegistrarLocador: ctr);
                    case 1:
                      return InsercaoDadosParte2(ctrRegistrarLocadorPage: ctr);
                    case 3:
                      return InsercaoDadosParte3(ctrRegistrarLocadorPage: ctr);
                    case 4:
                      return InsercaoDadosParte4(ctrRegistrarLocadorPage: ctr);
                    default:
                      return Container();
                  }
                }),
              ));
        }));
  }
}
