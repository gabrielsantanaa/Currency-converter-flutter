import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final void Function(CurrencyModel currencyModel) onChanged;
  final TextEditingController textEditingController;
  final CurrencyModel selectedItem;
  final List<CurrencyModel> items = CurrencyModel.currencies;

  CurrencyBox(
    this.textEditingController,
    this.onChanged,
    this.selectedItem,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: DropdownButton<CurrencyModel>(
              value: selectedItem,
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              underline: Container(
                height: 2,
                color: Colors.blue,
              ),
              onChanged: (CurrencyModel? value) {
                onChanged(value!);
              },
              items: items
                  .map<DropdownMenuItem<CurrencyModel>>((CurrencyModel value) {
                return DropdownMenuItem<CurrencyModel>(
                  value: value,
                  child: Text(value.name),
                );
              }).toList(),
            ),
          ),
          Container(width: 16),
          Expanded(
            child: TextField(
              controller: this.textEditingController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
