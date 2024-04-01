import 'package:flutter/material.dart';
import 'package:ticker/data/price_data.dart';

class ContainerBottomWidget extends StatefulWidget {
  const ContainerBottomWidget({super.key});

  @override
  State<ContainerBottomWidget> createState() => _ContainerBottomWidgetState();
}

class _ContainerBottomWidgetState extends State<ContainerBottomWidget> {
  @override
  Widget build(BuildContext context) {
    String? selectedCurrency = 'USD';

    List<DropdownMenuItem<String>> getDropdownItems() {
      List<DropdownMenuItem<String>> dropdownItems = [];
      for (int i = 0; i < currenciesList.length; i++) {
        String curency = currenciesList[i];
        var newItem = DropdownMenuItem(
          value: curency,
          child: Text(curency),
        );
        dropdownItems.add(newItem);
      }
      return dropdownItems;
    }

    return Container(
      height: 150,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(bottom: 30),
      color: Colors.lightBlue,
      child: DropdownButton<String>(
        value: selectedCurrency,
        items: getDropdownItems(),
        onChanged: (value) {
          setState(() {
            selectedCurrency = value;
          });
        },
      ),
    );
  }
}
