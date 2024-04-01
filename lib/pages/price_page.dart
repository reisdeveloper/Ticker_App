import 'package:flutter/material.dart';
import 'package:ticker/widgets/btc_widget.dart';
import 'package:ticker/widgets/container_bottom_widget.dart';

class PricePage extends StatefulWidget {
  const PricePage({super.key});

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: const Text(
          'Coin Ticker',
          style: TextStyle(
            color: Colors.white,
            fontSize: 21,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BtcWidget(),
          ContainerBottomWidget(),
        ],
      ),
    );
  }
}
