import 'package:flutter/material.dart';

class BasicDrawer extends StatefulWidget {
  @override
  _BasicDrawerState createState() => _BasicDrawerState();
}

class _BasicDrawerState extends State<BasicDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          padding: new EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              ListTile(title: Text("About"),
              ),
            ],
          )
      ),
    );
  }
}

