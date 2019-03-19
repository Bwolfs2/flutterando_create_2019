import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/components/Configurations.dart';
import 'package:flutterando_create_2019/components/metro_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    var rand = Random().nextInt(3);

    switch (rand) {
      case 0:
        Configurations.lightTheme();
        break;
      case 1:
        Configurations.darkTheme();
        break;
      case 2:
        Configurations.blueTheme();
        break;
      default:
    }

    //RandonThings.colorFixed = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Configurations.backgroundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: GridView.builder(
            itemCount: 8,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return MetroTile.rand();
            },
          ),
        ),
      ),
    );
  }
}
