import 'package:demo2/screens/animated_container.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import 'Demos.dart';
import 'FirstPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var j = 1;

  final _inputController = TextEditingController();

  void increment() {
    setState(() {
      j++;
    });
  }

  void decrement() {
    setState(() {
      j--;
    });
  }

  void set_j() {
    setState(() {
      try {
        j = int.parse(_inputController.text);
      } catch (e) {
        Toast.show("invalid number", context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstPage()));
            },
            splashColor: Colors.redAccent,
            tooltip: "This is Table Application",
          )
        ],
        title: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Table",
              style: TextStyle(color: Colors.pinkAccent),
              textScaleFactor: 2,
            ),
            Text(
              "Demo",
              style: TextStyle(color: Colors.blueAccent),
              textScaleFactor: 2,
            ),
          ],
        )),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _inputController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "INPUT",
                ),
              ),
            ),
            getTable(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: decrement,
                  child: Icon(Icons.remove),
                  color: Colors.blueAccent,
                  splashColor: Colors.pinkAccent,
                  minWidth: 150,
                  height: 45,
                ),
                Divider(
                  indent: 5,
                ),
                MaterialButton(
                  onPressed: increment,
                  child: Icon(Icons.add),
                  color: Colors.pinkAccent,
                  splashColor: Colors.blueAccent,
                  minWidth: 150,
                  height: 45,
                ),
              ],
            ),
            MaterialButton(
              onPressed: set_j,
              child: Icon(Icons.sentiment_satisfied),
              color: Colors.orangeAccent,
              minWidth: 150,
              height: 45,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.bubble_chart),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Demos()));
          }),
    );
  }

  Widget getDrawer() {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text(" Animation Container"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AnimatedContainerScreen()));
              },
            )
          ],
        ),
      ),
    );
  }

  Widget getTable() {
    List<Widget> widgets = [];
    for (int i = 1; i <= 10; i++) {
      widgets.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(j.toString()),
          Text("*"),
          Text(i.toString()),
          Text("="),
          Text((i * j).toString()),
        ],
      ));
    }

    return Column(
      children: widgets,
    );
  }
}
