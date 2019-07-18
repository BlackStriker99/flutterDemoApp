import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class gridview extends StatefulWidget {
  @override
  _gridviewState createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(title: Text("Grid View"),),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(15, (index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: <Widget>[
                Center(child: Container(color: Colors.blueAccent,width: 100,height: 100,child: MaterialButton(onPressed: (){},child: Text("Click me"),))),
                Center(child: Container(color: Colors.redAccent,width: 100,height: 100,child: MaterialButton(onPressed: (){},child: Text("Click me"),))),
              ],
            ),
          );
        }),
        scrollDirection: Axis.horizontal,

      ),
    );
  }
}
