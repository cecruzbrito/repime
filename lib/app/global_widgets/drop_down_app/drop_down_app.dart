import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/global_widgets/field_app/blocs/settings_field_app.dart';

import '../field_app/field_app.dart';
import 'ctr_store/ctr_drop_down_app.dart';

class DropDrownApp<T> extends StatelessWidget {
  const DropDrownApp(
      {super.key,
      required this.itens,
      required this.onTapCard,
      required this.initiateEnable,
      required this.settings});
  final List<T> itens;
  final void Function(T item) onTapCard;
  final bool initiateEnable;
  final SettingsFieldApp settings;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final ctrDropDownApp = CtrDropDownApp(isEnabled: initiateEnable, itens: itens);

    var auxSettings = SettingsFieldApp(
        ctr: settings.ctr,
        validator: settings.validator,
        hintText: settings.hintText,
        labelText: settings.hintText,
        onChange: ctrDropDownApp.onChange,
        onTap: () {
          if (settings.onTap != null) settings.onTap!();
          ctrDropDownApp.onTapField();
        });

    return Observer(builder: (_) {
      return Column(
        children: [
          FieldApp(settingsFieldApp: auxSettings),
          if (!ctrDropDownApp.isEnabled)
            Container()
          else
            Container(
              constraints: BoxConstraints(maxHeight: size.height * .15, minHeight: 0, minWidth: 0),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(size.width * .03),
                      bottomRight: Radius.circular(size.width * .03))),
              padding: EdgeInsets.only(top: size.height * .015),
              child: SingleChildScrollView(
                child: Observer(builder: (_) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (var item in ctrDropDownApp.realItens)
                        GestureDetector(
                          onTap: () => ctrDropDownApp.onTapItem(onTapCard, item),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                            child: Column(
                              children: [
                                Text(
                                  '$item',
                                  textAlign: TextAlign.center,
                                ),
                                const Divider()
                              ],
                            ),
                          ),
                        )
                    ],
                  );
                }),
              ),
            )
        ],
      );
    });
  }
}
