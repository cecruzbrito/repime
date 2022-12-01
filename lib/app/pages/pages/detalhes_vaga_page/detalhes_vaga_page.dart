import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:repime/app/blocs/vaga/vaga.dart';
import 'package:repime/app/pages/pages/detalhes_vaga_page/ctr/ctr_detalhes_vaga.dart';

import 'widgets/fotos.dart';

class DetalhesVagaPage extends StatefulWidget {
  final Vaga vaga;

  const DetalhesVagaPage({super.key, required this.vaga});

  @override
  State<DetalhesVagaPage> createState() => _DetalhesVagaPageState();
}

class _DetalhesVagaPageState extends State<DetalhesVagaPage> {
  Vaga get vaga => widget.vaga;

  late final ctr = CtrDetalhesVaga(vaga);

  @override
  void initState() {
    super.initState();
    ctr.getDetalhesVaga();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Fotos(ctr: ctr)],
      ),
    );
  }
}
