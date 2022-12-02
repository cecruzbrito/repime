import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../blocs/item_filter.dart';

class ItemFiltro extends StatelessWidget {
  const ItemFiltro({super.key, required this.item});
  final ItemFilter item;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Observer(builder: (_) {
      return GestureDetector(
        onTap: item.tap,
        child: Container(
          margin: EdgeInsets.only(right: size.width * .03),
          padding: EdgeInsets.symmetric(horizontal: size.width * .03, vertical: size.height * .01),
          decoration: BoxDecoration(
              color: item.isSelected ? Colors.black : Colors.grey[200],
              borderRadius: BorderRadius.circular(size.width * .05)),
          child: Row(
            children: [
              Icon(item.icon, color: item.isSelected ? Colors.white : Colors.black, size: size.height * .02),
              SizedBox(width: size.width * .01),
              Text(item.text,
                  style: TextStyle(
                      fontSize: size.height * .02, color: item.isSelected ? Colors.white : Colors.black)),
            ],
          ),
        ),
      );
    });
  }
}
