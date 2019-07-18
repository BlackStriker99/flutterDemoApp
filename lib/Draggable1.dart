import 'package:flutter/material.dart';

class Draggable1 extends StatefulWidget {
  @override
  _Draggable1State createState() => _Draggable1State();
}

class _Draggable1State extends State<Draggable1> {
  bool accepted = false;
  bool isSuccessfull = false;
  var WhiteKing = Icon(
    Icons.ac_unit,
    size: 90.0,
  );
  var Horsh = Icon(
    Icons.delete,
    size: 90.0,
  );
  var Bisop = Icon(
    Icons.flash_auto,
    size: 90.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Draggable'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Draggable(
            child: WhiteKing,
            feedback: WhiteKing,
            childWhenDragging: WhiteKing,
            data: "Brijesh",
          ),
          DragTarget(
            builder: (context, List<String> candidateData, rejectedData) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: isSuccessfull
                      ? Container(
                          color: Colors.red,
                          width: 90,
                          height: 90,
                          child: WhiteKing,
                        )
                      : Container(
                          color: Colors.red,
                          width: 90,
                          height: 90,
                        ),
                ),
              );
            },
            onWillAccept: (data) {
              return true;
            },
            onAccept: (data) {
              setState(() {
                isSuccessfull = true;
              });
            },
          ),
        ],
      ),
    );
  }
}
