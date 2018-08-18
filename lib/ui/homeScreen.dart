import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:draw_navigation_app/common/widgets/basicDrawer.dart';
import 'package:draw_navigation_app/common/platform/platformScaffold.dart';




class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() =>  _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: AppBar(title: Text("Home Screen"),),
      drawer: BasicDrawer(),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('This is the Home screen'),
              RaisedButton(
                  child: Text('to Detail Screen'),
                  onPressed: (){
                    SystemChannels.textInput.invokeMethod('TextInput.hide');
                    Navigator.of(context).pushNamed('/DetailScreen');
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}