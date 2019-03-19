import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/components/cards/big_square_card.dart';
import 'package:flutterando_create_2019/components/cards/small_card.dart';
import 'package:flutterando_create_2019/components/metro_tile.dart';

class MetroTopRight extends StatefulWidget implements MetroTile {
  @override
  _MetroTopRightState createState() => _MetroTopRightState();
}

class _MetroTopRightState extends State<MetroTopRight> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 6,
                child: Column(
                  children: List.generate(2, (index) => SmallCard()).toList(),
                ),
              ),
              BigSquareCard()
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.width / 6,
            child: Row(
              children: List.generate(3, (index) => SmallCard()).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
