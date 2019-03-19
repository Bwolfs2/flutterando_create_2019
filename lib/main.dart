import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutterando Create',
      theme: ThemeData(primaryColor: Colors.black, accentColor: Colors.white),
      home: HomePage(),
    );
  }
}
