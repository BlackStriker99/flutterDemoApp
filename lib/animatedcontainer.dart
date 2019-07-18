import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class animatedcontainer extends StatefulWidget {
  @override
  _animatedcontainerState createState() => _animatedcontainerState();
}

class _animatedcontainerState extends State<animatedcontainer> {
  var myColor = Colors.redAccent;
  var myWidth = 100.0;
  var myHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Center(
          child: AnimatedContainer(
        color: myColor,
        duration: Duration(seconds: 1),
        width: myWidth,
        height: myHeight,
        child: MaterialButton(
          onPressed: animate,
          child: Text('Animate!'),
        ),
      )),
    );
  }

  void animate() {

    setState(() {
      if (myColor == Colors.redAccent) {
        myColor = Colors.blueAccent;
        myWidth = 500;
        myHeight = 1000;
        Toast.show("Changing to RedAccent", context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,backgroundColor: Colors.orangeAccent);
      } else {
        myColor = Colors.redAccent;
        myWidth = 100.0;
        myHeight = 100.0;
        Toast.show("Changing to BlueAccent", context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,backgroundColor: Colors.orangeAccent);
      }
    });
  }
}
