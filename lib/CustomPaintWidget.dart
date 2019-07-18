import 'package:flutter/material.dart';

Color colorOne = Colors.red;
Color colorTwo = Colors.red[300];
Color colorThree = Colors.red[100];

class CustomPaintWidget extends StatefulWidget {
  @override
  _CustomPaintWidgetState createState() => _CustomPaintWidgetState();
}

class _CustomPaintWidgetState extends State<CustomPaintWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ShapePainter(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 300,
        ),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();

    paint.color = Colors.pinkAccent;
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);

    paint.color = Colors.deepPurpleAccent;
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, size.height);
    //path.close();
    canvas.drawPath(path, paint);

    paint.color = Colors.amberAccent;
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 75.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
