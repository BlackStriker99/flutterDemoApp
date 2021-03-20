import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class Bottomappbar extends StatefulWidget {
  @override
  _BottomappbarState createState() => _BottomappbarState();
}

class _BottomappbarState extends State<Bottomappbar> {
  var currentTabIndex = 0;

  final List<Widget> Tabs = [
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.pink,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("a"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
        heroTag: "i am hero",
      ),
      body: Tabs[currentTabIndex],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 2.0,
        elevation: 10,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.airplanemode_inactive),
                onPressed: () {
                  setState(() {
                    currentTabIndex = 0;
                  });
                }),
            IconButton(
                icon: Icon(Icons.airplanemode_inactive),
                onPressed: () {
                  setState(() {
                    currentTabIndex = 1;
                  });
                }),
            IconButton(
                icon: Icon(Icons.airplanemode_inactive),
                onPressed: () {
                  setState(() {
                    currentTabIndex = 2;
                  });
                }),
            IconButton(
                icon: Icon(Icons.airplanemode_inactive),
                onPressed: () {
                  setState(() {
                    currentTabIndex = 3;
                  });
                }),
          ],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.blueGrey,
      ),
    );
  }
}
