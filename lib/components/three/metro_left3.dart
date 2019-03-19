import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/components/cards/big_vertical_card.dart';
import 'package:flutterando_create_2019/components/cards/small_card.dart';

class MetroLeft3 extends StatefulWidget {
  @override
  _MetroLeft3State createState() => _MetroLeft3State();
}

class _MetroLeft3State extends State<MetroLeft3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 6,
            child: Column(
              children: List.generate(3, (index) => SmallCard()).toList(),
            ),
          ),
          BigVerticalCard()
        ],
      ),
    );
  }
}
