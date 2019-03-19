import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/components/cards/big_horizontal_card.dart';
import 'package:flutterando_create_2019/components/cards/small_card.dart';
import 'package:flutterando_create_2019/components/metro_tile.dart';

class MetroTop3 extends StatefulWidget implements MetroTile {
  @override
  _MetroTop3State createState() => _MetroTop3State();
}

class _MetroTop3State extends State<MetroTop3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width / 6,
            child: Row(
              children: List.generate(3, (index) => SmallCard()).toList(),
            ),
          ),
          BigHorizontalCard()
        ],
      ),
    );
  }
}
