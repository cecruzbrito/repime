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
    var _size = MediaQuery.of(context).size;

    final _ctrDropDownApp = CtrDropDownApp(isEnabled: initiateEnable, itens: itens);

    var auxSettings = SettingsFieldApp(
        ctr: settings.ctr,
        hintText: settings.hintText,
        labelText: settings.hintText,
        onChange: settings.onChange,
        onTap: () {
          if (settings.onTap != null) settings.onTap!();
          _ctrDropDownApp.onTapField();
        });

    return Observer(builder: (_) {
      return Column(
        children: [
          FieldApp(settingsFieldApp: auxSettings),
          if (!_ctrDropDownApp.isEnabled)
            Container()
          else
            Container(
              constraints: BoxConstraints(maxHeight: _size.height * .15, minHeight: 0, minWidth: 0),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(_size.width * .03),
                      bottomRight: Radius.circular(_size.width * .03))),
              padding: EdgeInsets.only(top: _size.height * .015),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (var item in _ctrDropDownApp.itens)
                      GestureDetector(
                        onTap: () => _ctrDropDownApp.onTapItem(onTapCard, item),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: _size.width * .05),
                          child: Column(
                            children: [
                              Text(
                                '$item',
                                textAlign: TextAlign.center,
                              ),
                              Divider()
                            ],
                          ),
                        ),
                      )
                  ],
                ),
              ),
            )
        ],
      );
    });
  }
}
