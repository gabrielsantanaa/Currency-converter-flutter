import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  final TextEditingController toText;
  final TextEditingController fromText;

  CurrencyModel fromCurrency = CurrencyModel.currencies[0];
  CurrencyModel toCurrency = CurrencyModel.currencies[1];

  HomeController(this.toText, this.fromText);

  void convert() {
    double value = double.tryParse(fromText.text) ?? 1.0;

    double result = 0;

    if (toCurrency.name == CurrencyModel.real().name) {
      result = value * fromCurrency.real;
    } else if (toCurrency.name == CurrencyModel.dollar().name) {
      result = value * fromCurrency.dollar;
    } else if (toCurrency.name == CurrencyModel.euro().name) {
      result = value * fromCurrency.euro;
    } else if (toCurrency.name == CurrencyModel.bitcoin().name) {
      result = value * fromCurrency.bitcoin;
    } else {
      throw Exception("Invalid CurrencyModel");
    }
    toText.text = result.toStringAsFixed(2);
  }
}
