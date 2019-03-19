import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/components/Configurations.dart';
import 'package:flutterando_create_2019/components/five/metro_bottom_left.dart';
import 'package:flutterando_create_2019/components/five/metro_bottom_right.dart';
import 'package:flutterando_create_2019/components/five/metro_top_left.dart';
import 'package:flutterando_create_2019/components/five/metro_top_right.dart';
import 'package:flutterando_create_2019/components/metro_four.dart';
import 'package:flutterando_create_2019/components/three/metro_bottom3.dart';
import 'package:flutterando_create_2019/components/three/metro_left3.dart';
import 'package:flutterando_create_2019/components/three/metro_right3.dart';
import 'package:flutterando_create_2019/components/three/metro_top3.dart';

class MetroTile {
  static Widget rand() {
    var rand = Configurations.styleFixed ?? Random().nextInt(8);
    //rand = 4;
    switch (rand) {
      case 0:
        return top3();
      case 1:
        return bottom3();
      case 2:
        return left3();
      case 3:
        return right3();
      case 4:
        return four();
      case 5:
        return bottomLeft();
      case 6:
        return bottomRight();
      case 7:
        return topLeft();
      case 8:
        return topRight();
      default:
        return top3();
    }
  }

  //Three
  static Widget top3() {
    return MetroTop3();
  }

  static Widget bottom3() {
    return MetroBottom3();
  }

  static Widget right3() {
    return MetroRight3();
  }

  static Widget left3() {
    return MetroLeft3();
  }

  //Four
  static Widget four() {
    return MetroFour();
  }

  //Five
  static Widget topRight() {
    return MetroTopRight();
  }

  static Widget topLeft() {
    return MetroTopLeft();
  }

  static Widget bottomLeft() {
    return MetroBottomLeft();
  }

  static Widget bottomRight() {
    return MetroBottomRight();
  }
}
