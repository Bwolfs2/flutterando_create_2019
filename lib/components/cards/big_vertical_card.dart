import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/components/Configurations.dart';

class BigVerticalCard extends StatelessWidget {
  const BigVerticalCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 2, right: 2, top: 4, bottom: 4),
      child: Material(
        elevation: 4,
        child: Container(
          color: Configurations.getColor(),
          height: MediaQuery.of(context).size.width / 1.9,
          width: MediaQuery.of(context).size.width / 3.14,
          child: Icon(
            Configurations.getIcon(),
            size: 60,
            color: Configurations.iconColor,
          ),
        ),
      ),
    );
  }
}
