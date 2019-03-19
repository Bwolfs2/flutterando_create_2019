import 'dart:math';
import 'package:flutter/material.dart';

class Configurations {
  static Color backgroundColor = Colors.black;
  static Color iconColor = Colors.black;

  static lightTheme() {
    backgroundColor = Colors.white;
    iconColor = Colors.white;
  }

  static darkTheme() {
    backgroundColor = Colors.black;
    iconColor = Colors.black;
  }

  static blueTheme() {
    backgroundColor = Colors.white;
    iconColor = Colors.white;
    colorFixed = Random().nextInt(8);
  }

  static int colorFixed;
  static int styleFixed;

  static final _colors = [
    Colors.blueAccent,
    Colors.amberAccent,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.lightGreen,
    Colors.lightBlueAccent,
    Colors.blueAccent,
    Colors.cyanAccent,
    Colors.orangeAccent
  ];

  static final _icons = [
    Icons.account_balance,
    Icons.data_usage,
    Icons.home,
    Icons.supervised_user_circle,
    Icons.art_track,
    Icons.wb_sunny,
    Icons.archive,
    Icons.favorite,
    Icons.videocam,
  ];

  static Color getColor() {
    var color = colorFixed ?? Random().nextInt(8);
    return _colors[color];
  }

  static IconData getIcon() {
    var icon = Random().nextInt(8);
    return _icons[icon];
  }
}
