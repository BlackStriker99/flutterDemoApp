import 'package:flutter/material.dart';

class cardanimation extends StatefulWidget {
  var name = "";
  cardanimation(var name) {
    this.name = name;
  }
  @override
  _cardanimationState createState() => _cardanimationState(name);
}

class _cardanimationState extends State<cardanimation> {
  var name;

  _cardanimationState(var name) {
    this.name = name;
  }

  bool firstStateEnabled = true;

  void animate() {
    setState(() {
      if (firstStateEnabled) {
        firstStateEnabled = false;
      } else {
        firstStateEnabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Animation"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedCrossFade(
                firstChild: Container(
                  color: Colors.redAccent,
                  height: 100,
                  width: 100,
                ), // Your first element here,
                secondChild: Container(
                  color: Colors.blueAccent,
                  height: 100,
                  width: 100,
                ), // Element after transition,
                crossFadeState: firstStateEnabled
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst, // State of the transition,
                duration: Duration(milliseconds: 500),
              ),
              MaterialButton(
                  color: Colors.amberAccent,
                  child: Text('Animate!'),
                  onPressed: animate)
            ]),
      ),
    );
  }
}
