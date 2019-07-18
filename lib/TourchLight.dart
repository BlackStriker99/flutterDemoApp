import 'package:flutter/material.dart';
import 'package:lamp/lamp.dart';

class TourchLight extends StatefulWidget {
  @override
  _TourchLightState createState() => _TourchLightState();
}

class _TourchLightState extends State<TourchLight> {
  var icon = Icons.flash_on;
  var intensity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tourch Light"),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: AlignmentDirectional.topCenter,
                    colors: [
                      Colors.blueAccent,
                      Colors.redAccent,
                    ],
                    //center: Alignment.center,
                  )),
              child: IconButton(
                  icon: Icon(
                    icon,
                    color: Colors.amberAccent,
                    size: 50,
                  ),
                  onPressed: () {
                    if (icon == Icons.flash_on) {
                      setState(() {
                        icon = Icons.flash_off;
                        Lamp.turnOn();
                      });
                    } else if (icon == Icons.flash_off) {
                      setState(() {
                        icon = Icons.flash_on;
                        Lamp.turnOff();
                      });
                    }
                  }),
            ),

            MaterialButton(
              color: Colors.redAccent,
              child: Text("Flash"),
              onPressed: () {
                Lamp.flash(Duration(milliseconds: 300));
              },
            )
//            Row(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              children: <Widget>[
//                Slider(
//                  activeColor: Colors.blueAccent,
//                  inactiveColor: Colors.white,
//                  value: intensity,
//                  onChanged: (val) {
//                    setState(() {
//                      intensity = val;
//                    });
//                  },
//                  divisions: 10,
//                  min: 0.0,
//                  max: 1.0,
//                ),
//                Text(
//                  intensity.toString(),
//                  textScaleFactor: 2.0,
//                  style: TextStyle(color: Colors.redAccent),
//                )
//              ],
//            )
          ],
        ),
      ),
    );
  }
}
