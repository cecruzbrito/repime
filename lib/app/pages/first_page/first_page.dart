import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'ctr_first_page/ctr_first_page.dart';
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
    return Scaffold(body: Observer(builder: (context) {
      return ctr.loading
          ? Container()
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [SelecioneCidadeUniversidade(ctrFirstPage: ctr)],
            );
    }));
  }
}
