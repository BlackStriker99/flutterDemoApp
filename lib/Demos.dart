import 'package:flutter/material.dart';
import 'package:lamp/lamp.dart';

import 'AnimatedIconWidget.dart';
import 'AppBarSerch.dart';
import 'BarLoadingScreen.dart';
import 'Bottomappbar.dart';
import 'Bottomnavigationbar.dart';
import 'ChangingWidget.dart';
import 'ClipRRectWidget.dart';
import 'CurveWidget.dart';
import 'CustomPaint2.dart';
import 'CustomPaintWidget.dart';
import 'Draggable1.dart';
import 'FlutterLogoAnimation.dart';
import 'HeroWidgetMain.dart';
import 'ImagesDemo.dart';
import 'Radiobutton.dart';
import 'SafeAreaWidget.dart';
import 'Sliverappbar.dart';
import 'TabView.dart';
import 'TourchLight.dart';
import 'WrapWidget.dart';
import 'animatedcontainer.dart';
import 'cardanimation.dart';
import 'chips.dart';
import 'expansionpanel.dart';
import 'gesturedetector.dart';
import 'gridview.dart';
import 'listview.dart';
import 'modelSheetBar.dart';
import 'slider.dart';

class Demos extends StatefulWidget {
  @override
  _DemosState createState() => _DemosState();
}

class _DemosState extends State<Demos> {
  var name = "Brijesh";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demos"),
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(borderSide: BorderSide()),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("Card Animation"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => cardanimation(name)));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(borderSide: BorderSide()),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("Animated Container"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => animatedcontainer()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(borderSide: BorderSide()),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("Grid View"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => gridview()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(borderSide: BorderSide()),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("Tab View"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TabView()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(borderSide: BorderSide()),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("Changing Widget"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangingWidget()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(borderSide: BorderSide()),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("Sliver Appbar"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Sliverappbar()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(borderSide: BorderSide()),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("Image Widget"),
                  onPressed: () {
                    Lamp.turnOn(intensity: 1.0);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ImagesDemo()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("AppBar Search"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AppBarSerch()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("Shifting navigation bar"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Bottomnavigationbar()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("Bottom App Bar"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Bottomappbar()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text(" model Sheet bar"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => modelSheetBar()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("BarLoadingScreen"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BarLoadingScreen()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("Slider"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => slider()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("ExpansionPanel"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => expansionpanel()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("Flutter Logo Animation"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FlutterAnimationLogo()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("Chips"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => chips()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("Dismisible"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => listview()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("Gesture Detector"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => gesturedetector()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("Tourch Demo"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TourchLight()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("Draggable Widget & Drag Target"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Draggable1()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("Radio Button"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Radiobutton()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("Wrap Widget"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WrapWidget()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("ClipRRect Widget"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ClipRRectWidget()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("SafeArea Widget"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SafeAreaWidget()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("Hero Widget"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HeroWidgetMain()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("AnimatedIcon"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnimatedIconWidget()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("Custom Paint"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomPaintWidget()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.redAccent,
                  child: Text("Curvs"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CurveWidget()));
                  },
                ),
              ),
              Card(
                color: Colors.blueAccent,
                shape: OutlineInputBorder(),
                child: MaterialButton(
                  shape: OutlineInputBorder(),
                  color: Colors.teal,
                  child: Text("Custom Paint 2"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomPaint2()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
