import 'package:flutter/material.dart';

class modelSheetBar extends StatefulWidget {
  @override
  _modelSheetBarState createState() => _modelSheetBarState();
}

class _modelSheetBarState extends State<modelSheetBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal bottom sheet'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('SHOW BOTTOM SHEET'),
          onPressed: () {
            showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Expanded(flex: 4, child: Image.asset("images/1.jpg")),
                        Expanded(flex: 2, child: Image.asset("images/1.jpg")),
                      ],
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
