import 'package:flutter/material.dart';

class BtcWidget extends StatelessWidget {
  const BtcWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(18, 18, 18, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 90,
          ),
          child: Text(
            '1 BTC = ? USD',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
