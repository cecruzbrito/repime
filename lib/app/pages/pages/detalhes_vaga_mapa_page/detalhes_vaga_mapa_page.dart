import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/global_widgets/button_text_app/button_text_app.dart';
import 'package:repime/app/global_widgets/loading_app/loading_app.dart';
import 'package:repime/app/pages/pages/detalhes_vaga_mapa_page/ctr/ctr_detalhes_vaga_mapa.dart';

import 'widgets/cabecalho_mapa.dart';
import 'widgets/mapa.dart';

class DetalhesVagaMapaPage extends StatefulWidget {
  const DetalhesVagaMapaPage({super.key});

  @override
  State<DetalhesVagaMapaPage> createState() => _DetalhesVagaMapaPageState();
}

class _DetalhesVagaMapaPageState extends State<DetalhesVagaMapaPage> {
  final ctr = Modular.get<CtrDetalhesVagaMapa>();

  @override
  void initState() {
    super.initState();
    ctr.getLocalization();
  }

  @override
  void dispose() {
    super.dispose();
    ctr.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Observer(builder: (_) {
        if (ctr.loading) {
          return const Center(child: LoadingApp());
        }
        return Column(
          children: [
            CabecalhoMapa(ctr: ctr),
            Expanded(child: Mapa(ctr: ctr)),
            Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * .08, vertical: size.height * .02),
                child: ButtonTextApp(text: 'Voltar', onPressed: Modular.to.pop))
          ],
        );
      }),
    );
  }
}
