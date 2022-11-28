import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../ctr_registrar_locador_page/ctr_registrar_locador_page.dart';

class SuffixIconSenha extends StatelessWidget {
  const SuffixIconSenha({super.key, required this.ctr});
  final CtrRegistrarLocadorPage ctr;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Observer(
        builder: (_) => GestureDetector(
            onTap: ctr.onTapIconSenha,
            child: Icon(
              ctr.obscureSenha ? Icons.visibility : Icons.visibility_off,
              size: size.height * .02,
              color: Colors.black,
            )));
  }
}
