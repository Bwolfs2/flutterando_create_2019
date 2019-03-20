import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/metro.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(ctx) {
    Widget rand() {
      switch (Random().nextInt(4)) {
        case 0:
          return BL();
        case 1:
          return BR();
        case 2:
          return TL();
        case 3:
          return TR();
        default:
          return BL();
      }
    }

    return MaterialApp(
        title: 'Flutterando Create',
        home: Material(
            color: Colors.white,
            child: SafeArea(
                child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: GridView.builder(
                        itemCount: 100,
                        gridDelegate:
                            new SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return rand();
                        })))));
  }
}

class Cfg {
  static int i = 1;
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

  static gc() => Colors.accents[Random().nextInt(16)];
  static gi() => _icons[Random().nextInt(8)];
  static gt() {
    i = i + 1;
    return i;
  }
}
