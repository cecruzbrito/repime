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
}
