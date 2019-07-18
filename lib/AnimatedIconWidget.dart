import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  @override
  _AnimatedIconWidgetState createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  bool flagPlay = false;
  Animation<double> animation;
  AnimationController _controller;
  Orientation orientation;
  double x = 100;
  double y = 90;

  @override
  void initState() {
    // orientation = Orientation.portrait;
//    Scaffold.of(context).showSnackBar(
//        SnackBar(content: Text("Orientation= " + orientation.toString())));
    _controller =
        AnimationController(duration: const Duration(seconds: 4), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Animated Icon Widget"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) => Container(
              child: Wrap(
                runSpacing: 10,
                alignment: WrapAlignment.spaceEvenly,
                spacing: 25,
                children: <Widget>[
                  GestureDetector(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.play_pause,
                      progress: animation,
                      size: orientation == Orientation.portrait ? x : y,
                    ),
                    onTap: () {
                      if (!flagPlay) {
                        _controller.forward();
                        flagPlay = true;
                      } else {
                        _controller.reverse();
                        flagPlay = false;
                      }
                    },
                  ),
                  GestureDetector(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.add_event,
                      progress: animation,
                      size: orientation == Orientation.portrait ? x : y,
                    ),
                    onTap: () {
                      if (!flagPlay) {
                        _controller.forward();
                        flagPlay = true;
                      } else {
                        _controller.reverse(from: 1);
                        flagPlay = false;
                      }
                    },
                  ),
                  GestureDetector(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.arrow_menu,
                      progress: animation,
                      size: orientation == Orientation.portrait ? x : y,
                    ),
                    onTap: () {
                      if (!flagPlay) {
                        _controller.forward();
                        flagPlay = true;
                      } else {
                        _controller.reverse(from: 1);
                        flagPlay = false;
                      }
                    },
                  ),
                  GestureDetector(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.close_menu,
                      progress: animation,
                      size: orientation == Orientation.portrait ? x : y,
                    ),
                    onTap: () {
                      if (!flagPlay) {
                        _controller.forward();
                        flagPlay = true;
                      } else {
                        _controller.reverse(from: 1);
                        flagPlay = false;
                      }
                    },
                  ),
                  GestureDetector(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.ellipsis_search,
                      progress: animation,
                      size: orientation == Orientation.portrait ? x : y,
                    ),
                    onTap: () {
                      if (!flagPlay) {
                        _controller.forward();
                        flagPlay = true;
                      } else {
                        _controller.reverse(from: 1);
                        flagPlay = false;
                      }
                    },
                  ),
                  GestureDetector(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.event_add,
                      progress: animation,
                      size: orientation == Orientation.portrait ? x : y,
                    ),
                    onTap: () {
                      if (!flagPlay) {
                        _controller.forward();
                        flagPlay = true;
                      } else {
                        _controller.reverse(from: 1);
                        flagPlay = false;
                      }
                    },
                  ),
                  GestureDetector(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.home_menu,
                      progress: animation,
                      size: orientation == Orientation.portrait ? x : y,
                    ),
                    onTap: () {
                      if (!flagPlay) {
                        _controller.forward();
                        flagPlay = true;
                      } else {
                        _controller.reverse(from: 1);
                        flagPlay = false;
                      }
                    },
                  ),
                  GestureDetector(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.list_view,
                      progress: animation,
                      size: orientation == Orientation.portrait ? x : y,
                    ),
                    onTap: () {
                      if (!flagPlay) {
                        _controller.forward();
                        flagPlay = true;
                      } else {
                        _controller.reverse(from: 1);
                        flagPlay = false;
                      }
                    },
                  ),
                  GestureDetector(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.menu_arrow,
                      progress: animation,
                      size: orientation == Orientation.portrait ? x : y,
                    ),
                    onTap: () {
                      if (!flagPlay) {
                        _controller.forward();
                        flagPlay = true;
                      } else {
                        _controller.reverse(from: 1);
                        flagPlay = false;
                      }
                    },
                  ),
                  GestureDetector(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.menu_close,
                      progress: animation,
                      size: orientation == Orientation.portrait ? x : y,
                    ),
                    onTap: () {
                      if (!flagPlay) {
                        _controller.forward();
                        flagPlay = true;
                      } else {
                        _controller.reverse(from: 1);
                        flagPlay = false;
                      }
                    },
                  ),
                  GestureDetector(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.pause_play,
                      progress: animation,
                      size: orientation == Orientation.portrait ? x : y,
                    ),
                    onTap: () {
                      if (!flagPlay) {
                        _controller.forward();
                        flagPlay = true;
                      } else {
                        _controller.reverse(from: 1);
                        flagPlay = false;
                      }
                    },
                  ),
                  GestureDetector(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.search_ellipsis,
                      progress: animation,
                      size: orientation == Orientation.portrait ? x : y,
                    ),
                    onTap: () {
                      if (!flagPlay) {
                        _controller.forward();
                        flagPlay = true;
                      } else {
                        _controller.reverse(from: 1);
                        flagPlay = false;
                      }
                    },
                  ),
                  GestureDetector(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.view_list,
                      progress: animation,
                      size: orientation == Orientation.portrait ? x : y,
                    ),
                    onTap: () {
                      if (!flagPlay) {
                        _controller.forward();
                        flagPlay = true;
                      } else {
                        _controller.reverse(from: 1);
                        flagPlay = false;
                      }
                    },
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
