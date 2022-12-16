import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/global_widgets/loading_app/loading_app.dart';
import 'package:repime/app/pages/pages/home_page/ctr/ctr_home_page.dart';
import 'package:repime/app/pages/pages/home_page/widgtes/animations/animation_cabecalho.dart';
import 'package:repime/app/pages/pages/home_page/widgtes/vaga/vaga_card.dart';

import 'widgtes/cabecalho.dart';
import 'widgtes/filtros/filtros.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final ctrAnimFiltros = AnimationController(vsync: this, duration: const Duration(milliseconds: 1500));
  late final ctrAnimTitle = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200));

  var ctr = CtrHomePage();

  @override
  void initState() {
    super.initState();
    firstRequest();
  }

  firstRequest() async {
    ctrAnimTitle.forward();

    await ctr.getVagas();
    await ctrAnimFiltros.forward();
  }

  @override
  void dispose() {
    super.dispose();
    ctrAnimFiltros.dispose();
    ctrAnimTitle.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: ctr.keyScaffold,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .05),
        child: Observer(builder: (_) {
          if (ctr.loading) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Cabecalho(ctr: ctr, ctrAnim: ctrAnimTitle),
                const Expanded(child: LoadingApp()),
              ],
            );
          }
          return RefreshIndicator(
            onRefresh: ctr.getVagas,
            color: Colors.black,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Cabecalho(
                    ctr: ctr,
                    ctrAnim: ctrAnimTitle,
                  ),
                  Filtros(ctr: ctr, ctrAnim: ctrAnimFiltros),
                  SizedBox(height: size.height * .03),
                  Observer(builder: (_) {
                    return Column(
                      children: [for (var v in ctr.vagas) VagaCard(vaga: v)],
                    );
                  })
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
