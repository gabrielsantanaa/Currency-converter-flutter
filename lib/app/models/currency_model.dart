class CurrencyModel {
  final String name;
  final double real;
  final double dollar;
  final double euro;
  final double bitcoin;

  CurrencyModel._(this.name, this.real, this.dollar, this.euro, this.bitcoin);

  factory CurrencyModel.real() = Real;
  factory CurrencyModel.dollar() = Dollar;
  factory CurrencyModel.euro() = Euro;
  factory CurrencyModel.bitcoin() = Bitcoin;

  static List<CurrencyModel> currencies = [
    CurrencyModel.real(),
    CurrencyModel.dollar(),
    CurrencyModel.euro(),
    CurrencyModel.bitcoin()
  ];
}

class Real extends CurrencyModel {
  Real() : super._("Real", 1.0, 0.18, 0.15, 0.000016);
}

class Dollar extends CurrencyModel {
  Dollar() : super._("Dollar", 5.65, 1.0, 0.85, 0.000088);
}

class Euro extends CurrencyModel {
  Euro() : super._("Euro", 6.62, 1.17, 1.0, 0.00010);
}

class Bitcoin extends CurrencyModel {
  Bitcoin() : super._("Bitcoin", 64116.51, 11351.30, 9689.54, 1.0);
}
