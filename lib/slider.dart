import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  static double _sliderValue = 0;
  static BuildContext c;

  var submitRatingButton = new MaterialButton(
      child: Text("Submit"),
      color: Colors.red,
      onPressed: () {
        Toast.show("Your Rating is " + _sliderValue.toString(), c);
      });

  @override
  void initState() {
    c = context;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // In a row, column, listview, etc., a Flexible widget is a wrapper
                // that works much like CSS's flex-grow property.
                //
                // Any room left over in the main axis after
                // the widgets are given their width
                // will be distributed to all the flexible widgets
                // at a ratio based on the flex property you pass in.
                // Because this is the only Flexible widget,
                // it will take up all the extra space.
                //
                // In other words, it will expand as much as it can until
                // the all the space is taken up.
                Flexible(
                  flex: 1,
                  // A slider, like many form elements, needs to know its
                  // own value and how to update that value.
                  //
                  // The slider will call onChanged whenever the value
                  // changes. But it will only repaint when its value property
                  // changes in the state using setState.
                  //
                  // The workflow is:
                  // 1. User drags the slider.
                  // 2. onChanged is called.
                  // 3. The callback in onChanged sets the sliderValue state.
                  // 4. Flutter repaints everything that relies on sliderValue,
                  // in this case, just the slider at its new value.
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue)),
                    child: Slider(
                      activeColor: Colors.indigoAccent,
                      min: 0.0,
                      max: 15.0,
                      onChanged: (newRating) {
                        setState(() => _sliderValue = newRating);
                      },
                      value: _sliderValue,
                    ),
                  ),
                ),

                // This is the part that displays the value of the slider.
                Container(
                  width: 50.0,
                  alignment: Alignment.center,
                  child: Text('${_sliderValue.toInt()}',
                      style: Theme.of(context).textTheme.display1),
                ),
              ],
            ),
          ),
          submitRatingButton,
        ],
      ),
    );
  }
}
