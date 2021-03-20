import 'package:flutter/material.dart';

import 'AppDrawer.dart';
import 'SecondPage.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  static const String routeName = '/firstpage';
  FocusNode textEditFocus;

  @override
  void initState() {
    textEditFocus = FocusNode();
  }

  final _controllerUser = TextEditingController();
  final _controllerPwd = TextEditingController();

  var text = "";

  void set() {
    setState(() {
      text = _controllerUser.text;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SecondPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.pop(context);
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

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Container(
            color: Colors.blueAccent,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 25, 10, 25),
                  child: FlutterLogo(
                    size: 150,
                    textColor: Colors.orange,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 22, 10, 22),
                  child: TextField(
                    controller: _controllerUser,
                    autofocus: true,
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.lightGreenAccent,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.words,
                    textAlign: TextAlign.justify,
                    onSubmitted: (fn) {
                      FocusScope.of(context).requestFocus(textEditFocus);
                    },
                    decoration: InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Icon(
                            Icons.account_circle,
                            size: 30,
                          ),
                        ),
                        hintText: "Username",
                        labelText: "Username",
                        border: OutlineInputBorder()),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 22, 10, 22),
                  child: TextField(
                    controller: _controllerPwd,
                    focusNode: textEditFocus,
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.lightGreenAccent,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (fn) {
                      set();
                    },
                    keyboardType: TextInputType.number,
                    textCapitalization: TextCapitalization.words,
                    textAlign: TextAlign.justify,
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Icon(
                            Icons.vpn_key,
                            size: 30,
                          ),
                        ),
                        hintText: "Password",
                        labelText: "Password",
                        border: OutlineInputBorder()),
                  ),
                ),

                //EditableText(controller: _controller,focusNode: editTextFocus ,style: TextStyle(backgroundColor: Colors.blueAccent,color: Colors.black), cursorColor: Colors.lightGreenAccent,backgroundCursorColor: Colors.teal,textCapitalization: TextCapitalization.sentences,),

                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 25, 10, 25),
                  child: RaisedButton(
                    onPressed: set,
                    child: Text("Submit"),
                    color: Colors.orangeAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 25, 10, 47),
                  child: Text(
                    text,
                    key: Key("textMsg"),
                  ),
                ),
              ],
            )),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FocusScope.of(context).requestFocus(textEditFocus);
        },
        child: Icon(Icons.center_focus_strong),
      ),
      //resizeToAvoidBottomPadding:false
    );
  }
}
