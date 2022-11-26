import 'package:flutter/material.dart';
import 'package:repime/app/blocs/cidade/cidade.dart';

import '../../blocs/universidade/db/universidade_db.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    a();
  }

  a() async {
    var cidade = Cidade(id: 1, nome: 'nome', uf: 'uf', pais: 'pais');
    cidade.adicionarList = await UniversidadeDB.getUniversidades(cidade);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
