import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/pages/pages/first_page/widgets/animations/animation_opacity_first_page.dart';

import '../../../global_widgets/loading_app/loading_app.dart';
import 'ctr_first_page/ctr_first_page.dart';
import 'widgets/botao_continue/botao_continue.dart';
import 'widgets/cabecalho.dart';
import 'widgets/logo.dart';
import 'widgets/selecione_cidade_universidade_.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with TickerProviderStateMixin {
  final CtrFirstPage ctr = CtrFirstPage();
  late final AnimationController ctrAnimation =
      AnimationController(vsync: this, duration: const Duration(milliseconds: 1300));
  @override
  void initState() {
    super.initState();
    firstRequest();
  }

  firstRequest() async {
    await ctr.makeGetCidades();
    await ctrAnimation.forward();
  }

  @override
  void dispose() {
    super.dispose();
    ctrAnimation.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        key: ctr.keyScaffold,
        body: Observer(builder: (context) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            reverseDuration: const Duration(milliseconds: 200),
            child: ctr.loading
                ? const LoadingApp()
                : Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * .05, vertical: size.height * .02),
                    child: Stack(
                      children: [
                        AnimationOpacityFirstPage(
                            ctrAnimation: ctrAnimation, interval: const Interval(0, .4), child: const Logo()),
                        Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AnimationOpacityFirstPage(
                                    ctrAnimation: ctrAnimation,
                                    interval: const Interval(.3, .6),
                                    child: Cabecalho(isError: ctr.cidades.isEmpty)),
                                AnimationOpacityFirstPage(
                                    ctrAnimation: ctrAnimation,
                                    interval: const Interval(.6, .9),
                                    child: SelecioneCidadeUniversidade(ctrFirstPage: ctr))
                              ],
                            )),
                        Align(alignment: Alignment.bottomCenter, child: BotaoContinue(ctrFirstPage: ctr)),
                      ],
                    ),
                  ),
          );
        }));
  }
}
