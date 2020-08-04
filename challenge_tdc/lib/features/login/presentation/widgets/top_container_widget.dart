import 'package:challengetdc/constants/constants.dart';
import 'package:flutter/material.dart';

class TopContainerWidget extends StatelessWidget {

  final Widget image;
  final Widget child;

  const TopContainerWidget({@required this.image, @required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: (MediaQuery.of(context).size.height / 4),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [kStartGradientColor, kEndGradientColor])
          ),
          child: Center(
            child: Container(
              width: (MediaQuery.of(context).size.width / 4),
              child: image,
            ),
          ),
        ),
        Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(
                top: (MediaQuery.of(context).size.width / 3.5),
                left: 16,
                right: 16
            ),
            child: child
        )
      ],
    );
  }
}