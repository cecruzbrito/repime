import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/blocs/util/enum_tipos_residencia/store_enum/store_enum_tipo_residencia.dart';

class ItemResidencia extends StatelessWidget {
  const ItemResidencia({super.key, required this.tipoResidenciaStore, required this.onPressed});
  final EnumTipoResidenciaStore tipoResidenciaStore;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Observer(builder: (_) {
      return GestureDetector(
        onTap: onPressed,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: _size.width * .03, vertical: _size.height * .01),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(_size.width * .02)),
                border: !tipoResidenciaStore.isSelected
                    ? Border.all(width: _size.width * .005, color: Colors.black)
                    : Border.all(width: _size.width * .005, color: Colors.white),
                color: tipoResidenciaStore.isSelected ? Colors.black : Colors.white),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.home_work,
                  color: !tipoResidenciaStore.isSelected ? Colors.black : Colors.white,
                  size: _size.height * .025,
                ),
                SizedBox(
                  width: _size.width * .015,
                ),
                Text(
                  '${tipoResidenciaStore.tipo}',
                  style: TextStyle(
                      fontSize: _size.height * .018,
                      color: !tipoResidenciaStore.isSelected ? Colors.black : Colors.white),
                ),
              ],
            )),
      );
    });
  }
}
