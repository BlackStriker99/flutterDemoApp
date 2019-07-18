import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ChangingWidget extends StatefulWidget {
  @override
  _ChangingWidgetState createState() => _ChangingWidgetState();
}

class _ChangingWidgetState extends State<ChangingWidget> {
  bool firstStateEnabled = false;

  void animate() {
    setState(() {
      if (firstStateEnabled) {
        firstStateEnabled = false;
      } else {
        firstStateEnabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Changing Widget"),),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              AnimatedCrossFade(alignment: Alignment.bottomLeft,
                  firstCurve: Curves.bounceIn,
                  secondCurve: Curves.decelerate,
                  firstChild: Container(color: Colors.redAccent,height: 500,width: 500,),
                  secondChild: MaterialButton(onPressed: (){
                    Toast.show("Hello User!!", context,backgroundColor: Colors.deepPurple);
                  },color: Colors.blueAccent,child: Text("Hello "),),
                  crossFadeState: firstStateEnabled
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: Duration(seconds: 2)),

              MaterialButton(color:Colors.amberAccent,child: Text('Animate!'),onPressed: animate)
            ],
          ),
        ),
      ),
    );
  }
}
