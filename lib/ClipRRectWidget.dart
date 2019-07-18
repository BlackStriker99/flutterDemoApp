import 'package:flutter/material.dart';

class ClipRRectWidget extends StatefulWidget {
  @override
  _ClipRRectWidgetState createState() => _ClipRRectWidgetState();
}

class _ClipRRectWidgetState extends State<ClipRRectWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRRect Widget"),
      ),
      body: Container(
        color: Colors.deepOrange,
        child: Center(
          child: ClipRRect(
            child: Image.asset(
              'images/1.jpg',
              width: 300,
            ),
            borderRadius: BorderRadius.circular(50),
            clipBehavior: Clip.hardEdge,
          ),
        ),
      ),
    );
  }
}
