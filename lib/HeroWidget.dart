import 'package:flutter/material.dart';

class HeroWidget extends StatefulWidget {
  @override
  _HeroWidgetState createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
//          Center(child: Hero(tag: 'test1', child: Image.asset('images/1.jpg'))),
          Center(child: Hero(tag: 'test2', child: Image.asset('images/s.jpg'))),
        ],
      ),
    );
  }
}
