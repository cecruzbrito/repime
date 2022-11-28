import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/global_widgets/loading_app/loading_app.dart';
import 'package:repime/app/pages/registrar_locador_page/ctr_registrar_locador_page/ctr_registrar_locador_page.dart';

import 'widgets/parte_1/insercao_dados_parte_1.dart';

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
              child: InsercaoDadosParte1(ctrRegistrarLocador: ctr));
        }));
  }
}
