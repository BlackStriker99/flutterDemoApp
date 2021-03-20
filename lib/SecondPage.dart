import 'package:flutter/material.dart';
import 'TabView.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> litems1 = [];
  final TextEditingController eCtrl = new TextEditingController();

  List<String> litems2 = [
    "1",
    "2",
    "Third",
    "4",
    "1",
    "2",
    "Third",
    "4",
    "1",
    "2",
    "Third",
    "4",
    "1",
    "2",
    "Third",
    "4",
    "1",
    "2",
    "Third",
    "1",
    "2",
    "Third"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Column(
        children: <Widget>[
          new TextField(
            controller: eCtrl,
            onSubmitted: (text) {
              litems1.add(text); // Append Text to the list
              eCtrl.clear(); // Clear the Text area
              setState(() {}); // Redraw the Stateful Widget
            },
          ),
          new Expanded(
              child: new ListView.builder(
                  physics: FixedExtentScrollPhysics(),
                  itemCount: litems1.length,
                  itemBuilder: (BuildContext context, int Index) {
                    return new Text(litems1[Index]);
                  })),
          new Expanded(
            child: new ListView.builder(
              itemCount: litems2.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return new Container(
                    child: Column(
                  children: <Widget>[
                    Container(
                      child: new Text(litems2[index]),
                      color: Colors.blueAccent,
                    ),
                    Container(
                      child: new Text(litems2[index]),
                      color: Colors.redAccent,
                    ),
                  ],
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
