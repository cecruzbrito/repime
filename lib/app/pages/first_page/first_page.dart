import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'ctr_first_page/ctr_first_page.dart';
import 'widgets/botao_continue/botao_continue.dart';
import 'widgets/cabecalho.dart';
import 'widgets/loading.dart';
import 'widgets/selecione_cidade_universidade_.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final CtrFirstPage ctr = CtrFirstPage();
  @override
  void initState() {
    super.initState();
    ctr.makeGetCidades();
  }

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(body: Observer(builder: (context) {
      return ctr.loading
          ? Loading()
          : Padding(
              padding: EdgeInsets.symmetric(horizontal: _size.width * .05, vertical: _size.height * .02),
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [const Cabecalho(), SelecioneCidadeUniversidade(ctrFirstPage: ctr)],
                      )),
                  Align(alignment: Alignment.bottomCenter, child: BotaoContinue(ctrFirstPage: ctr)),
                ],
              ),
            );
    }));
  }
}
