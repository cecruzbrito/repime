import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/pages/controller/main_controller.dart';
import 'package:repime/app/pages/pages/detalhes_vaga_mapa_page/ctr/ctr_detalhes_vaga_mapa.dart';

import '../../../../blocs/util/enum_tipos_residencia/enum_tipo_residencia.dart';

class CabecalhoMapa extends StatelessWidget {
  CabecalhoMapa({super.key, required this.ctr});
  CtrDetalhesVagaMapa ctr;
  @override
  Widget build(BuildContext context) {
    var universidade = Modular.get<MainController>().locatarioAtual.universidade;
    var end = ctr.vaga!.residencia.tipo == EnumTiposResidencia.replublica
        ? ctr.vaga!.rep!.nome
        : ctr.vaga!.residencia.endereco.endereco;
    var size = MediaQuery.of(context).size;
    return Material(
      elevation: 8,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * .08, vertical: size.height * .02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                  height: size.height * .012,
                  width: size.height * .012,
                ),
                SizedBox(width: size.width * .02),
                Flexible(
                  child: Text(
                    universidade.nome,
                    style: TextStyle(fontSize: size.height * .015, color: Colors.grey),
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                  height: size.height * .012,
                  width: size.height * .012,
                ),
                SizedBox(width: size.width * .02),
                Flexible(
                  child: Text(
                    end,
                    style: TextStyle(fontSize: size.height * .015, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
