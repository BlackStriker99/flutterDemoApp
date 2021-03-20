import 'package:flutter/material.dart';

class assetpic extends StatefulWidget {
  @override
  _assetpicState createState() => _assetpicState();
}

class _assetpicState extends State<assetpic> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('asset/1.jpg'),
          // ...
        ),
        // ...
      ),
    );
  }
}
