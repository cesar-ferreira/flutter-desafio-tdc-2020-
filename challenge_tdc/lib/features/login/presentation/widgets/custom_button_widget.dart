import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {

  final String label;
  final Color labelColor;
  final Color buttonColor;
  final Color borderColor;
  final Function onPressed;

  CustomButtonWidget({
    @required this.label,
    @required this.labelColor,
    @required this.buttonColor,
    @required this.borderColor,
    @required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        label,
        style: TextStyle(color: labelColor),
      ),
      color: buttonColor,
      padding: EdgeInsets.only(left: 24, right: 24),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: BorderSide(color: borderColor),
      ),
      onPressed: onPressed,
    );
  }
}