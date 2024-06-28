import 'package:flutter/material.dart';
import 'package:dana1/helpers/formatter.dart';

class HeaderBalance extends StatefulWidget {
  @override
  _HeaderBalanceState createState() => _HeaderBalanceState();
}

class _HeaderBalanceState extends State<HeaderBalance> {
  @override
  Widget build(BuildContext context) {
    double balance = 285600000;

    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Text(
            "Rp.",
            style: TextStyle(fontSize: 14.0, color: Colors.white),
          ),
          Text(
            Formatter.number(balance),
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
