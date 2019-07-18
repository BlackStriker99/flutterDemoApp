import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        DrawerHeader(
            child: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Image.asset(
              'images/1.jpg',
              fit: BoxFit.cover,
            ),
            Positioned(
              child: Text(
                "I Am Thor !!!!!!!!",
                style: TextStyle(color: Colors.white),
              ),
              left: 15,
              bottom: 15,
            )
          ],
        )),
        Expanded(
          child: Container(
            color: Colors.red,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Divider(
                  height: 1,
                  color: Colors.green,
                ),
                ListTile(
                  onTap: () {},
                  title: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.contact_mail),
                      ),
                      Text("Contects"),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  color: Colors.green,
                ),
                ListTile(
                  onTap: () {},
                  title: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.contact_mail),
                      ),
                      Text("Contects"),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  color: Colors.green,
                ),
                ListTile(
                  onTap: () {},
                  title: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.contact_mail),
                      ),
                      Text("Contects"),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  color: Colors.green,
                ),
                ListTile(
                  onTap: () {},
                  title: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.contact_mail),
                      ),
                      Text("Contects"),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  color: Colors.green,
                ),
                ListTile(
                  onTap: () {},
                  title: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.contact_mail),
                      ),
                      Text("Contects"),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
