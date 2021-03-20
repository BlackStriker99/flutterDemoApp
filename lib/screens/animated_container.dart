import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  @override
  _AnimatedContainerScreenState createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double containerHeight = 389;
  Color containerColor = Colors.red;

  String containerImage = "images/1.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: scaffoldBody(),
    );
  }

  Widget scaffoldBody() {
    return Container(
      child: Column(
        children: [
          AnimatedContainer(
            decoration: BoxDecoration(
                color: containerColor,
                image: DecorationImage(
                    image: AssetImage(containerImage), fit: BoxFit.cover)),
            height: containerHeight,
            curve: Curves.bounceOut,
            width: MediaQuery.of(context).size.width,
            duration: Duration(seconds: 3),
          ),
          Container(
            color: Colors.blue,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    onPressed: animatePress,
                    child: Text("Animate"),
                    color: Colors.orangeAccent,
                  ),
                  MaterialButton(
                    onPressed: showAlert,
                    child: Text("Show Alert Dialog"),
                    color: Colors.orangeAccent,
                  ),
                  MaterialButton(
                    onPressed: showSheet,
                    child: Text("Show Bottom Sheet"),
                    color: Colors.orangeAccent,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void animatePress() {
    if (containerHeight == 389) {
      containerHeight = 100;
    } else if (containerHeight == 100) {
      containerHeight = 389;
    }
    if (containerColor == Colors.red) {
      containerColor = Colors.green;
    } else if (containerColor == Colors.green) {
      containerColor = Colors.red;
    }
    if (containerImage == "images/1.jpg") {
      containerImage = "images/s.jpg";
    } else {
      containerImage = "images/1.jpg";
    }

    setState(() {});
  }

  void showAlert() {
    debugPrint("Show alert pressed !!");

    showDialog(
        barrierDismissible: false,
        barrierColor: Colors.pink.withOpacity(0.5),
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Colors.white,
              title: Text("Welcome to alert dialog"),
              content: Text("How are you guys?"),
              actions: [
                MaterialButton(
                  onPressed: () {},
                  child: Text("Animate"),
                  color: Colors.orangeAccent,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text("Animate"),
                  color: Colors.orangeAccent,
                ),
              ],
            ));
  }

  void showSheet() {
    debugPrint("Show sheet pressed !!");

    showModalBottomSheet(
        barrierColor: Colors.green.withOpacity(0.5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        context: context,
        builder: (context) => Container(
                child: Column(
              children: [
                ListTile(title: Text("Hello Bottom Sheet")),
                ListTile(title: Text("Hello Bottom Sheet")),
                ListTile(title: Text("Hello Bottom Sheet")),
                ListTile(title: Text("Hello Bottom Sheet")),
                ListTile(title: Text("Hello Bottom Sheet")),
              ],
            )));
  }
}
