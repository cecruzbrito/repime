import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/pages/pages/home_page/widgtes/animations/animation_filtro.dart';

import '../../ctr/ctr_home_page.dart';
import 'item_filtro.dart';

class Filtros extends StatelessWidget {
  const Filtros({super.key, required this.ctrAnim, required this.ctr});
  final CtrHomePage ctr;
  final AnimationController ctrAnim;
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    var intervals = const [
      Interval(0, .2, curve: Curves.fastOutSlowIn),
      Interval(.2, .4, curve: Curves.fastOutSlowIn),
      Interval(.4, .6, curve: Curves.fastOutSlowIn),
      Interval(.8, 1, curve: Curves.fastOutSlowIn),
    ];
    return Container(
      margin: EdgeInsets.only(top: _size.height * .02),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Observer(
              builder: (_) => Row(
                    children: [
                      for (var i = 0; i < ctr.filtros.length; i++)
                        AnimationFiltro(
                            ctrAnim: ctrAnim,
                            interval: intervals[i],
                            child: ItemFiltro(item: ctr.filtros[i])),
                    ],
                  ))),
    );
  }
}
