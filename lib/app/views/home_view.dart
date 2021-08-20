import 'package:currency_converter/app/components/currency_box.dart';
import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  final TextEditingController _toText = TextEditingController();
  final TextEditingController _fromText = TextEditingController();
  late HomeController _homeController;

  HomeView() {
    _homeController = HomeController(_toText, _fromText);
  }

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/logo.png",
              width: 150,
              height: 150,
            ),
            Container(height: 48),
            CurrencyBox(
              widget._fromText,
              (CurrencyModel? currencyModel) {
                if (currencyModel != null) {
                  setState(() {
                    widget._homeController.fromCurrency = currencyModel;
                  });
                }
              },
              widget._homeController.fromCurrency,
            ),
            CurrencyBox(
              widget._toText,
              (CurrencyModel? currencyModel) {
                if (currencyModel != null) {
                  print(currencyModel.name);
                  setState(() {
                    widget._homeController.fromCurrency = currencyModel;
                  });
                }
              },
              widget._homeController.toCurrency,
            ),
            Container(height: 24),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget._homeController.convert();
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
