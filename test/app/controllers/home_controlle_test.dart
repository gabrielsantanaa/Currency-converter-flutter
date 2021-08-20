import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  final homeController = HomeController(toText, fromText);

  // test("should convert from real to dollar", () {
  //   fromText.text = "3.0";
  //   homeController.convert(CurrencyModel.real(), CurrencyModel.dollar());
  //   expect(toText.text, "0.54");
  // });

  // test("should convert from real to euros", () {
  //   fromText.text = "3.0";
  //   homeController.convert(CurrencyModel.real(), CurrencyModel.euro());
  //   expect(toText.text, "0.45");
  // });

  // test("should convert from real to bitcon", () {
  //   fromText.text = "4.0";
  //   homeController.convert(CurrencyModel.real(), CurrencyModel.bitcoin());
  //   expect(toText.text, "0.000064");
  // });
}
