import 'package:flutter/material.dart';

class FlutterAnimationLogo extends StatefulWidget {
  @override
  _FlutterAnimationLogoState createState() => _FlutterAnimationLogoState();
}

class _FlutterAnimationLogoState extends State<FlutterAnimationLogo>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController _controller;

  void animate() {
    if (animation.value == 250) {
      _controller.reverse();
    }
    if (animation.value == 0) {
      _controller.forward();
    }
  }

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = Tween<double>(begin: 0, end: 250).animate(_controller)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text("Flutter Logo Animation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              //margin: EdgeInsets.symmetric(vertical: 10),
              // height: 300,
              // width: 300,

              height: animation.value,
              width: animation.value,
              child: FlutterLogo(
                colors: Colors.green,
              ),
            ),
            MaterialButton(
              child: Text("Animate"),
              color: Colors.pinkAccent,
              onPressed: animate,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
