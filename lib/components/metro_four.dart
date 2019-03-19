import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/components/Configurations.dart';

class MetroFour extends StatefulWidget {
  @override
  _MetroFourState createState() => _MetroFourState();
}

class _MetroFourState extends State<MetroFour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.transparent,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 4,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Container(
                padding: EdgeInsets.all(4),
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
                ));
          },
        ),
      ),
    );
  }
}
