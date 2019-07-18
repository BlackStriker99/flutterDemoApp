import 'package:flutter/material.dart';

class Bottomnavigationbar extends StatefulWidget {


  @override
  _BottomnavigationbarState createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {


  int currentTabIndex = 0;

  void incrementIndex(index) {
    setState(() {
      currentTabIndex = index;
    });
  }



  List<Widget> tabs = [
    Container(color:Colors.green),
    Container(color:Colors.orange),
    Container(color:Colors.blue),
    Container(color:Colors.amberAccent),
    Container(color:Colors.deepPurple)
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Bottomnavigation bar shifting'),
      ),


      body: tabs[currentTabIndex],







      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.shifting,
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.amberAccent,
              activeIcon: Icon(
                Icons.airplanemode_inactive,semanticLabel: "text",
                color: Colors.blueAccent,
              ),

              icon: Icon(
                Icons.airplanemode_active,
                color: Colors.white,
              ),
              title: Text("Test")),
          BottomNavigationBarItem(
              backgroundColor: Colors.deepPurple,
              activeIcon: Icon(
                Icons.airplanemode_inactive,
                color: Colors.blueAccent,
              ),
              icon: Icon(
                Icons.airplanemode_active,
                color: Colors.white,
              ),
              title: Text("Test")),
          BottomNavigationBarItem(
              backgroundColor: Colors.pinkAccent,
              activeIcon: Icon(
                Icons.airplanemode_inactive,
                color: Colors.blueAccent,
              ),
              icon: Icon(
                Icons.airplanemode_active,
                color: Colors.white,
              ),
              title: Text("Test")),
          BottomNavigationBarItem(
              backgroundColor: Colors.tealAccent,
              activeIcon: Icon(
                Icons.airplanemode_inactive,
                color: Colors.blueAccent,
              ),
              icon: Icon(
                Icons.airplanemode_active,
                color: Colors.white,
              ),
              title: Text("Test")),
          BottomNavigationBarItem(
              backgroundColor: Colors.purpleAccent,
              activeIcon: Icon(
                Icons.airplanemode_inactive,
                color: Colors.blueAccent,
              ),
              icon: Icon(
                Icons.airplanemode_active,
                color: Colors.white,
              ),
              title: Text("Test")),
        ],
        onTap: (index) {
          incrementIndex(index);
        },
      ),
    );
  }
}
