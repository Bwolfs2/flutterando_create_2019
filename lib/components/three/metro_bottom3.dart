import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/components/cards/big_horizontal_card.dart';
import 'package:flutterando_create_2019/components/cards/small_card.dart';

class MetroBottom3 extends StatefulWidget {
  @override
  _MetroBottom3State createState() => _MetroBottom3State();
}

class _MetroBottom3State extends State<MetroBottom3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          BigHorizontalCard(),
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
