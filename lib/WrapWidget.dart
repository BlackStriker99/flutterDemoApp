import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  @override
  _WrapWidgetState createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget"),
      ),
      body: Container(
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.end,
          children: <Widget>[
            MaterialButton(
              onPressed: () {},
              child: Container(
                color: Colors.deepOrange,
                height: 30,
                width: 45,
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Container(
                color: Colors.deepOrange,
                height: 100,
                width: 45,
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Container(
                color: Colors.deepOrange,
                height: 30,
                width: 45,
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Container(
                color: Colors.deepOrange,
                height: 30,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
