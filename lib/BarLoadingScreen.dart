import 'package:flutter/material.dart';

class BarLoadingScreen extends StatefulWidget {
  @override
  _BarLoadingScreenState createState() => _BarLoadingScreenState();
}

class _BarLoadingScreenState extends State<BarLoadingScreen>
    with SingleTickerProviderStateMixin {
  Tween<double> tween = new Tween<double>(begin: 0.0, end: 1.0);

  AnimationController _controller; // new
  Animation<Color> animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));

    animation = new ColorTween(
      begin: Colors.pink,
      end: Colors.amberAccent,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
      ),
      body: Container(
        // This is where you pass the animation value
        // Each time set state gets called,
        // this widget gets rebuilt,
        // and the value of the animation is something inbetween
        // the starting grey and the ending green
        // thanks to our ColorTween
        decoration: new BoxDecoration(color: animation.value),
        child: new Center(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Bar(),
              new Bar(),
              new Bar(),
              new Bar(),
            ],
          ),
        ),
      ),
    );
  }
}

class Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.0,
      height: 15.0,
      decoration: new BoxDecoration(
          color: const Color.fromRGBO(0, 0, 255, 1.0),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 8.0,
              spreadRadius: 1.0,
              offset: new Offset(5.0, 0.0),
            ),
            new BoxShadow(
              color: Colors.pink,
              blurRadius: 6.0,
              spreadRadius: 1.5,
              offset: new Offset(1.0, 0.0),
            ),
          ]),
    );
  }
}
