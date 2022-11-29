enum EnumTiposResidencia {
  replublica,
  kitnet;

  @override
  String toString() {
    switch (this) {
      case EnumTiposResidencia.kitnet:
        return 'KitNet';
      case EnumTiposResidencia.replublica:
        return 'República';
    }
  }

  static EnumTiposResidencia fromJson(j) => j['tipo'] == 'republica' ? replublica : kitnet;

  String toNameDB() {
    switch (this) {
      case EnumTiposResidencia.kitnet:
        return 'kitnet';
      case EnumTiposResidencia.replublica:
        return 'republica';
    }
  }
}
