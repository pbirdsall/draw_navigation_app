import 'package:flutter/material.dart';

import 'package:draw_navigation_app/ui/homeScreen.dart';
import 'package:draw_navigation_app/ui/detailScreen.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Draw Navigation App",
        routes: <String,WidgetBuilder>{
          "/HomeScreen": (BuildContext context) => HomeScreen(),
          "/DetailScreen": (BuildContext context) => DetailScreen(),
        },
        home:
        HomeScreen()
    );
  }

}