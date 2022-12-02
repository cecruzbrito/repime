import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/global_widgets/loading_app/loading_app.dart';
import 'package:repime/app/pages/pages/home_page/ctr/ctr_home_page.dart';
import 'package:repime/app/pages/pages/home_page/widgtes/vaga/vaga_card.dart';

import 'widgtes/cabecalho.dart';
import 'widgtes/filtros/filtros.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var ctr = CtrHomePage();

  @override
  void initState() {
    super.initState();
    ctr.getVagas();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .05),
        child: Observer(builder: (_) {
          if (ctr.loading) {
            return SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Cabecalho(),
                  const Expanded(child: LoadingApp()),
                ],
              ),
            );
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                Cabecalho(),
                Filtros(ctr: ctr),
                SizedBox(height: size.height * .03),
                Observer(builder: (_) {
                  return Column(
                    children: [for (var v in ctr.vagas) VagaCard(vaga: v)],
                  );
                })
              ],
            ),
          );
        }),
      ),
    );
  }
}
