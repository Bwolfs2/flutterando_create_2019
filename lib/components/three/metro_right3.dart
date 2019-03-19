import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/components/cards/big_vertical_card.dart';
import 'package:flutterando_create_2019/components/cards/small_card.dart';

class MetroRight3 extends StatefulWidget {
  @override
  _MetroRight3State createState() => _MetroRight3State();
}

class _MetroRight3State extends State<MetroRight3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          BigVerticalCard(),
          Container(
            width: MediaQuery.of(context).size.width / 6,
            child: Column(
              children: List.generate(3, (index) => SmallCard()).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
