import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:draw_navigation_app/common/widgets/basicDrawer.dart';
import 'package:draw_navigation_app/common/platform/platformScaffold.dart';
import 'package:draw_navigation_app/common/platform/platformWillPopScope.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformWillPopScope(
        onWillPop: () {
      if(Navigator.canPop(context)) {
        Navigator.of(context).pushNamedAndRemoveUntil('/HomeScreen', (Route<dynamic> route) => false);
      } else {
        Navigator.of(context).pushReplacementNamed('/HomeScreen');
      }
    },
    child:PlatformScaffold(
      appBar: AppBar(title: Text("Detail Screen"),),
      drawer: BasicDrawer(),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('This is the Detail screen'),
            ],
          ),
        ),
      ),
    )
    );
  }
}
