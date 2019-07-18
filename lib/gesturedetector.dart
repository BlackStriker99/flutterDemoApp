import 'package:flutter/material.dart';

class gesturedetector extends StatefulWidget {
  @override
  _gesturedetectorState createState() => _gesturedetectorState();
}

class _gesturedetectorState extends State<gesturedetector> {
  int numTaps = 0;
  int numDoubleTaps = 0;
  int numLongPress = 0;
  int colorIndex = 0;

  var color = [
    Colors.redAccent,
    Colors.amberAccent,
    Colors.blueAccent,
    Colors.lightGreenAccent,
    Colors.pinkAccent
  ];

  double posX = 0.0;
  double posY = 0.0;
  double boxSize = 150.0;

  @override
  Widget build(BuildContext context) {
    if (posX == 0.0) {
      center(context);
    }
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Gestures and Animations"),
      ),
      body: GestureDetector(
          onTap: () {
            setState(() {
              numTaps++;
            });
            //Scaffold.of(context).showSnackBar(SnackBar(content: Text("Hiii")));
          },
          onDoubleTap: () {
            setState(() {
              numDoubleTaps++;
            });
          },
          onLongPress: () {
            setState(() {
              //colorIndex++;
              numLongPress++;
            });
          },
          onVerticalDragUpdate: (DragUpdateDetails value) {
            setState(() {
              double delta = value.delta.dy;
              posY += delta;
            });
          },
          onHorizontalDragUpdate: (DragUpdateDetails value) {
            setState(() {
              double delta = value.delta.dx;
              posX += delta;
            });
          },
          onLongPressMoveUpdate: (LongPressMoveUpdateDetails value) {
            setState(() {
              double deltax = value.globalPosition.dx - 80;
              double deltay = value.globalPosition.dy - 155;
              posX = deltax;
              posY = deltay;
            });
          },
          onLongPressStart: (LongPressMoveUpdateDetails) {
            setState(() {
              colorIndex++;
            });
          },
          onLongPressEnd: (LongPressMoveUpdateDetails) {
            setState(() {
              colorIndex++;
            });
          },
          child: Stack(children: <Widget>[
            Positioned(
              left: posX,
              top: posY,
              child: Container(
                width: boxSize,
                height: boxSize,
                decoration: BoxDecoration(
                  color: color[colorIndex % 5],
                ),
              ),
            ),
          ])),
      bottomNavigationBar: Material(
        color: Theme.of(context).primaryColorLight,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
              "Taps $numTaps  -Double Taps: $numDoubleTaps  -Long Presses: $numLongPress"),
        ),
      ),
    );
  }

  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - boxSize / 2;
    posY = (MediaQuery.of(context).size.height / 2) - boxSize / 2;
    setState(() {
      posX = posX;
      posY = posY;
    });
  }
}
