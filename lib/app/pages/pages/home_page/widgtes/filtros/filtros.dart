import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../ctr/ctr_home_page.dart';
import 'item_filtro.dart';

class Filtros extends StatelessWidget {
  const Filtros({super.key, required this.ctr});
  final CtrHomePage ctr;
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: _size.height * .02),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Observer(
              builder: (_) => Row(
                    children: [for (var i in ctr.filtros) ItemFiltro(item: i)],
                  ))),
    );
  }
}
