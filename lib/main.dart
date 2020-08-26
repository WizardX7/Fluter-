import 'package:flutter/material.dart';
import 'package:flutter_app1/productMenu.dart';
import 'package:flutter_app1/searchMenu.dart';

import 'myHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyHomePage(),
        '/searchMenu': (context) => SearchMenu(),
        '/productMenu': (context) => ProductMenu(),
      },
    );
  }
}
