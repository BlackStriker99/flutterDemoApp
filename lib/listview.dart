import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  @override
  _listviewState createState() => _listviewState();
}

class _listviewState extends State<listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
      ),
      body: Container(
          child: ListView.builder(itemBuilder: (BuildContext bc, index) {
        return Dismissible(
            key: Key("a"),
            direction: DismissDirection.startToEnd,
            child: ListTile(
              trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
              title: Text("Hello"),
            ));
      })),
    );
  }
}
