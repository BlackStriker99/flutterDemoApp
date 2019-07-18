import 'package:flutter/material.dart';
import 'package:demo2/AppDrawer.dart';

class TabView extends StatefulWidget {
  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        bottomNavigationBar: TabBar(tabs: <Widget>[
          new Tab(
            text: "First",
            icon: Icon(Icons.style),
          ),
          new Tab(
            text: "Second",
            icon: Icon(Icons.style),
          ),
          new Tab(
            text: "Third",
            icon: Icon(Icons.style),
          ),
        ]),
        body: new TabBarView(
          children: <Widget>[
            new Container(
              color: Colors.deepOrangeAccent,
              child: new Center(
                child: new Text(
                  "First",
                ),
              ),
            ),
            new Container(
              color: Colors.blueGrey,
              child: new Center(
                child: new Text(
                  "Second",
                ),
              ),
            ),
            new Container(
              color: Colors.teal,
              child: new Center(
                child: new Text(
                  "Third",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
