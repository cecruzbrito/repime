import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/pages/pages/adicionar_vaga_page/ctr/ctr_adicionar_vaga_page.dart';
import 'package:repime/app/pages/pages/adicionar_vaga_page/widgets/inserir_dados_parte_1.dart';

import 'widgets/inserir_dados_parte_2.dart';

class AdicionarVagaPage extends StatefulWidget {
  const AdicionarVagaPage({super.key});

  @override
  State<AdicionarVagaPage> createState() => _AdicionarVagaPageState();
}

class _AdicionarVagaPageState extends State<AdicionarVagaPage> {
  final ctr = CtrAdicionarVagaPage();

  @override
  void dispose() {
    super.dispose();
    ctr.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .05, vertical: size.height * .02),
        child: Center(
          child: Stack(
            children: [
              Observer(builder: (_) {
                switch (ctr.indexPage) {
                  case 0:
                    return InserirDadosParte1(ctrAdicionarVagaPage: ctr);
                  case 1:
                    return InserirDadosParte2(ctrAdicionarVagaPage: ctr);
                  default:
                    return Container();
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
