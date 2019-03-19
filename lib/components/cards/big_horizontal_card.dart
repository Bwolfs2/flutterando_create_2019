import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/components/Configurations.dart';

class BigHorizontalCard extends StatelessWidget {
  const BigHorizontalCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 4, right: 4, top: 2, bottom: 2),
      child: Material(
        elevation: 4,
        child: Container(
          color: Configurations.getColor(),
          width: MediaQuery.of(context).size.width / 1.9,
          height: MediaQuery.of(context).size.width / 3.14,
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
