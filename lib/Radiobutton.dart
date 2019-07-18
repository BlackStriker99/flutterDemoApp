import 'package:flutter/material.dart';

class Radiobutton extends StatefulWidget {
  @override
  _RadiobuttonState createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton>
    with TickerProviderStateMixin {
  Tween<double> tween = new Tween<double>(begin: 0.0, end: 1.0);
  Color color1;
  Color color2;
  Color defult = Colors.blue;
  AnimationController _controller; // new
  Animation<Color> animation;
  var _value1;
  var _value2;
  var slid = 0.0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Radio Button'),
        ),
        body: Container(
          color: defult,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Red'),
                    Radio(
                        value: "red",
                        groupValue: _value1,
                        onChanged: (var i) => {setState(() => _value1 = i)}),
                    Text('Green'),
                    Radio(
                        value: "green",
                        groupValue: _value1,
                        onChanged: (var i) => {setState(() => _value1 = i)}),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Brown'),
                    Radio(
                        value: "Brown",
                        groupValue: _value2,
                        onChanged: (var i) => {setState(() => _value2 = i)}),
                    Text('Yellow'),
                    Radio(
                        value: 'Yellow',
                        groupValue: _value2,
                        onChanged: (var i) => {setState(() => _value2 = i)}),
                  ],
                ),
                //Text(_value2.toString()),
                MaterialButton(
                  onPressed: () {
                    if (_value1 == "red") {
                      color1 = Colors.red;
                    }
                    if (_value1 == "green") {
                      color1 = Colors.green;
                    }
                    if (_value2 == "Brown") {
                      color2 = Colors.brown;
                    }
                    if (_value2 == "Yellow") {
                      color2 = Colors.yellow;
                    }
                    _controller = AnimationController(
                        vsync: this, duration: Duration(milliseconds: 3000));

                    animation = new ColorTween(
                      begin: color1,
                      end: color2,
                    ).animate(_controller)
                      ..addListener(() {
                        setState(() {
                          defult = animation.value;
                        });
                      });

                    _controller.forward();
                  },
                  color: Colors.lightGreenAccent,
                  child: Text("click"),
                )
              ],
            ),
          ),
        ));
  }
}
