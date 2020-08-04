import 'package:challengetdc/constants/constants.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {

  final Widget child;

  const CardWidget({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        color: kCardColor,
        child: SingleChildScrollView(
            child: child
        ),
      ),
    );
  }
}