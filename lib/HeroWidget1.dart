import 'package:flutter/material.dart';

class HeroWidget1 extends StatefulWidget {
  @override
  _HeroWidget1State createState() => _HeroWidget1State();
}

class _HeroWidget1State extends State<HeroWidget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Hero(tag: 'test1', child: Image.asset('images/1.jpg'))),
//          Center(child: Hero(tag: 'test2', child: Image.asset('images/s.jpg'))),
        ],
      ),
    );
  }
}
