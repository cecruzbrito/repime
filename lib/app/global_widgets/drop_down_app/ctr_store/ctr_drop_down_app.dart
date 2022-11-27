import 'package:mobx/mobx.dart';
part 'ctr_drop_down_app.g.dart';

// ignore: library_private_types_in_public_api
class CtrDropDownApp<T> = _CtrDropDownAppBase<T> with _$CtrDropDownApp;

abstract class _CtrDropDownAppBase<T> with Store {
  _CtrDropDownAppBase({required this.isEnabled, required this.itens});

  @observable
  List<T> itens;

  @observable
  var itensFiltered = <T>[].asObservable();

  @observable
  bool isEnabled;

  @action
  void _setEnable({bool? value}) {
    value != null ? isEnabled = value : isEnabled = !isEnabled;
    print('isenable => $isEnabled');
  }

  @action
  void onTapItem<T>(void Function(T item) onTapCard, T item) {
    onTapCard(item);
    _setEnable();
  }

  @action
  onTapField() => _setEnable(value: true);

  @action
  onChange(String value) {
    itensFiltered.clear();
    var auxValue = _filterString(value);
    for (var i in itensFiltered) {
      var eAux = _filterString('$i');
      if (eAux!.contains(auxValue!)) itensFiltered.add(i);
    }
  }

  String? _filterString(String? value) {
    var withDia = 'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
    var withoutDia = 'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz';

    for (int i = 0; i < withDia.length; i++) {
      value = value!.replaceAll(withDia[i], withoutDia[i]);
    }

    value = value!.toUpperCase();
    return value;
  }
}
