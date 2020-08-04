import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonGradientWidget extends StatelessWidget {

  final String label;
  final Color labelColor;
  final Color startColor;
  final Color endColor;
  final Function onPressed;

  CustomButtonGradientWidget({
    @required this.label,
    @required this.labelColor,
    @required this.startColor,
    @required this.endColor,
    @required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: FlatButton(
        onPressed: onPressed,
        child: Container(
          constraints: BoxConstraints(maxWidth: (width * 0.5), minHeight: 50.0),
          alignment: Alignment.center,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: labelColor
            ),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [startColor, endColor]),
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
      ),
    );
  }
}