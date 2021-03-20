import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.pop(context);
            },
            splashColor: Colors.redAccent,
            tooltip: "This is Table Application",
          )
        ],
        title: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Table",
              style: TextStyle(color: Colors.pinkAccent),
              textScaleFactor: 2,
            ),
            Text(
              "Demo",
              style: TextStyle(color: Colors.blueAccent),
              textScaleFactor: 2,
            ),
          ],
        )),
      ),
    );
  }
}
