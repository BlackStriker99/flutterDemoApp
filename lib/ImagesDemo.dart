import 'package:flutter/material.dart';


class ImagesDemo extends StatefulWidget {
  @override
  _ImagesDemoState createState() => _ImagesDemoState();
}

class _ImagesDemoState extends State<ImagesDemo> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Imagedemo"),),
      body: Center(
        child: Container(
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage('images/1.jpg'),
             fit: BoxFit.cover)


           ),
        ),
      ),
    );
  }
}
