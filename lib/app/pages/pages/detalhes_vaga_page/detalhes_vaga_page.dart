import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/pages/pages/detalhes_vaga_page/ctr/ctr_detalhes_vaga.dart';

import 'widgets/dados_residencia.dart';
import 'widgets/fotos.dart';

class DetalhesVagaPage extends StatefulWidget {
  const DetalhesVagaPage({super.key});

  @override
  State<DetalhesVagaPage> createState() => _DetalhesVagaPageState();
}

class _DetalhesVagaPageState extends State<DetalhesVagaPage> {
  late final ctr = Modular.get<CtrDetalhesVaga>();

  @override
  void initState() {
    super.initState();
    ctr.getDetalhesVaga();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ctr.keyScaffold,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Fotos(ctr: ctr), DadosResidencia(ctr: ctr)],
        ),
      ),
    );
  }
}
