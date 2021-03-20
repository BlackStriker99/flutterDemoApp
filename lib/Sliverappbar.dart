import 'package:flutter/material.dart';

class Sliverappbar extends StatefulWidget {
  @override
  _SliverappbarState createState() => _SliverappbarState();
}

class _SliverappbarState extends State<Sliverappbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.black,
            expandedHeight: 150,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                children: <Widget>[
                  FlutterLogo(
                    textColor: Colors.amber,
                    size: 40,
                  ),
                  Text(
                    "Sliver Appbar",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),

          SliverList(
              delegate:
                  SliverChildBuilderDelegate((context, index) => _buildPanel()))

//          SliverList(  //silverFixedextentlist
//            delegate: SliverChildBuilderDelegate(
//              (context, index) => ListTile(
//                    title: Text("ListTile $index"),
//                    onTap: () {},
//                  ),
//            ),
//          )
        ],
      ),
    );
  }

  List<Item> _data = generateItems(8);

  static List<Item> generateItems(int numberOfItems) {
    return List.generate(numberOfItems, (int index) {
      return Item(
        headerValue: 'Panel $index',
        expandedValue: 'This is item number $index',
      );
    });
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle: Text('To delete this panel, tap the trash can icon'),
              trailing: Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

class Item {
  String expandedValue;
  String headerValue;
  bool isExpanded;
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });
}
