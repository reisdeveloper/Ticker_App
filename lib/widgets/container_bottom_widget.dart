import 'package:flutter/material.dart';

class ContainerBottomWidget extends StatelessWidget {
  const ContainerBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(bottom: 30),
      color: Colors.lightBlue,
      child: DropdownButton<String>(
        items: const [
          DropdownMenuItem(
            value: 'USD',
            child: Text('USD'),
          ),
          DropdownMenuItem(
            value: 'BRL',
            child: Text('BRL'),
          ),
          DropdownMenuItem(
            value: 'EUR',
            child: Text('EUR'),
          ),
        ],
        onChanged: (value) {
          print(value);
        },
      ),
    );
  }
}
