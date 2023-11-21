import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    super.key,
    required this.text,
    this.borderColor = Colors.white,
    this.background = Colors.white,
     this.width,
     this.height,
    this.textColor = Colors.white,
  });
  Color background;
  Widget text;
  dynamic icon;
  Color textColor;
  double? height;
  double? width;
  Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: background,
          border: Border.all(width: 1.5, color: borderColor),
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: text,
      ),
    );
  }
}
