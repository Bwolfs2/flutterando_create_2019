import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/components/Configurations.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 6.32,
      height: MediaQuery.of(context).size.width / 6.32,
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.all(1.2),
      child: Material(
        elevation: 4,
        child: Container(
          color: Configurations.getColor(),
          child: Icon(
            Configurations.getIcon(),
            size: 30,
            color: Configurations.iconColor,
          ),
        ),
      ),
    );
  }
}
