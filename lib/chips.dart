import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class chips extends StatefulWidget {
  @override
  _chipsState createState() => _chipsState();
}

class _chipsState extends State<chips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chips"),
      ),
      body: Container(
        height: (MediaQuery.of(context).size.height),
        color: Colors.pinkAccent,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
                Chip(
                  backgroundColor: Colors.white,
                  avatar: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'images/s.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  label: Text('Brijesh Sakariya'),
                  deleteIcon: Icon(Icons.delete),
                  onDeleted: () {
                    Toast.show("Hii I Am Smiley", context,
                        duration: Toast.LENGTH_LONG,
                        backgroundColor: Colors.blueAccent);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
