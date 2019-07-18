import 'package:flutter/material.dart';

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
      j = int.parse(_inputController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            for (int i = 1; i <= 10; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(j.toString()),
                  Text("*"),
                  Text(i.toString()),
                  Text("="),
                  Text((i * j).toString()),
                ],
              ),

            /* Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(j.toString()),
                Text("*"),
                Text("1"),
                Text("="),
                Text((a0).toString()),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(j.toString()),
                Text("*"),
                Text("2"),
                Text("="),
                Text((a1).toString()),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(j.toString()),
                Text("*"),
                Text("3"),
                Text("="),
                Text((a2).toString()),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(j.toString()),
                Text("*"),
                Text("4"),
                Text("="),
                Text((a3).toString()),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(j.toString()),
                Text("*"),
                Text("5"),
                Text("="),
                Text((a4).toString()),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(j.toString()),
                Text("*"),
                Text("6"),
                Text("="),
                Text((a5).toString()),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(j.toString()),
                Text("*"),
                Text("7"),
                Text("="),
                Text((a6).toString()),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(j.toString()),
                Text("*"),
                Text("8"),
                Text("="),
                Text((a7).toString()),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(j.toString()),
                Text("*"),
                Text("9"),
                Text("="),
                Text((a8).toString()),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(j.toString()),
                Text("*"),
                Text("10"),
                Text("="),
                Text((a9).toString()),
              ],

            ),*/

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
}
