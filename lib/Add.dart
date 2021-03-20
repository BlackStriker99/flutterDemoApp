import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  void add() {
    setState(() {
      j++;
    });
  }

  var j = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Text("Welcome"),
              Text(j.toString()),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Welcome"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: add,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
