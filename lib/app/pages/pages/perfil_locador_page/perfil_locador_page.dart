import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/global_widgets/loading_app/loading_app.dart';
import 'package:repime/app/pages/pages/perfil_locador_page/ctr/perfil_locador_ctr.dart';
import 'package:repime/app/pages/pages/perfil_locador_page/widgets/foto.dart';

import '../../controller/main_controller.dart';
import 'widgets/dados_locador.dart';
import 'widgets/vaga_card.dart';

class PerfilLocadorPage extends StatefulWidget {
  const PerfilLocadorPage({super.key});

  @override
  State<PerfilLocadorPage> createState() => _PerfilLocadorPageState();
}

class _PerfilLocadorPageState extends State<PerfilLocadorPage> {
  final ctr = Modular.get<PerfilLocadorCtr>();

  @override
  void initState() {
    super.initState();
    ctr.setContato(Modular.get<MainController>().locadorAtual.contato);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(body: Observer(builder: (context) {
      if (ctr.loading) {
        return const Center(child: LoadingApp());
      }
      return SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                const Foto(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * .05, vertical: size.height * .02),
                  child: Column(
                    children: [
                      DadosLocador(ctr: ctr),
                      SizedBox(height: size.height * .02),
                      Divider(),
                      SizedBox(height: size.height * .02),
                      Observer(builder: (_) {
                        if (ctr.vagas.isEmpty) {
                          return Container();
                        }
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Vagas',
                              style: TextStyle(fontSize: size.height * .02, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: size.height * .03),
                            for (var v in ctr.vagas) VagaCard(v: v, ctr: ctr)
                          ],
                        );
                      })
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }));
  }
}
