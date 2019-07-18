import 'package:flutter/material.dart';

import 'HeroWidget.dart';
import 'HeroWidget1.dart';

class HeroWidgetMain extends StatefulWidget {
  @override
  _HeroWidgetMainState createState() => _HeroWidgetMainState();
}

class _HeroWidgetMainState extends State<HeroWidgetMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Widget"),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: <Widget>[
                  MaterialButton(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Hero(
                          tag: 'test1',
                          child: Image.asset(
                            "images/1.jpg",
                            scale: 20,
                          )),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HeroWidget1()));
                    },
                  ),
                  MaterialButton(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Hero(
                          tag: 'test2',
                          child: Image.asset(
                            "images/s.jpg",
                            scale: 20,
                          )),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HeroWidget()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
