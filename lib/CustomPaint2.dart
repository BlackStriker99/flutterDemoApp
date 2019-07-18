import 'package:flutter/material.dart';

Color red = Colors.red;
Color purple = Colors.purple;
Color deepPurple = Colors.deepPurple;
Color cyan = Colors.cyan;
Color orange = Colors.orange;

class CustomPaint2 extends StatefulWidget {
  @override
  _CustomPaint2State createState() => _CustomPaint2State();
}

class _CustomPaint2State extends State<CustomPaint2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomPaint(
            painter: ShapePainter(),
            child: Container(
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: Text("Custom Painter 2"),
                backgroundColor: Colors.transparent,
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      crossAxisCount: 2),
                  children: <Widget>[
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = deepPurple;

    var mainBgPath = Path();
    mainBgPath.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    canvas.drawPath(mainBgPath, paint);

    var purplePath = Path();
    purplePath.lineTo(size.width * 0.50, 0);
    purplePath.quadraticBezierTo(
        size.width * 0.25, size.height * 0.3, 0, size.height * 0.50);
    purplePath.close();
    paint.color = purple;
    canvas.drawPath(purplePath, paint);

    var redPath = Path();
    redPath.moveTo(size.width, 0);
    redPath.lineTo(size.width * 0.9, 0);
    redPath.quadraticBezierTo(
        size.width * 0.20, size.height * 0.40, 0, size.height * 0.9);
    redPath.lineTo(0, size.height);
    redPath.lineTo(size.width * 0.20, size.height);
    redPath.quadraticBezierTo(
        size.width * 0.55, size.height * 0.55, size.width, size.height * 0.40);
    redPath.close();
    paint.color = red;
    canvas.drawPath(redPath, paint);

    var cyanPath = Path();
    cyanPath.lineTo(0, size.width * 0.25);
    cyanPath.lineTo(size.height * 0.25, 0);
    cyanPath.close();
    paint.color = cyan;
    canvas.drawPath(cyanPath, paint);

    var orangePath = Path();
    orangePath.moveTo(0, size.height);
    orangePath.lineTo(0, size.height * 0.70);
    orangePath.quadraticBezierTo(
        size.width * 0.30, size.height * 0.80, size.width * 0.40, size.height);
    orangePath.close();
    paint.color = orange;
    canvas.drawPath(orangePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
