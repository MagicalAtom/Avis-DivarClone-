import 'package:flutter/material.dart';
class AvisTextStyle {
  static TextStyle h1({required Color textColor}) {
    return TextStyle(
      fontFamily: 'ShabnamMedium',
      color: textColor,
      fontSize: 56,
    );
  }
  static TextStyle h2({required Color textColor}) {
    return TextStyle(
      fontFamily: 'ShabnamMedium',
      color: textColor,
      fontSize: 48,
    );
  }
  static TextStyle h3({required Color textColor}) {
    return TextStyle(
      fontFamily: 'ShabnamMedium',
      color: textColor,
      fontSize: 40,
    );
  }
  static TextStyle h4({required Color textColor}) {
    return TextStyle(
      fontFamily: 'ShabnamMedium',
      color: textColor,
      fontSize: 32,
    );
  }
  static TextStyle h5({required Color textColor}) {
    return TextStyle(
      fontFamily: 'ShabnamMedium',
      color: textColor,
      fontSize: 24,
    );
  }
  static TextStyle h6({required Color textColor}) {
    return TextStyle(
      fontFamily: 'ShabnamMedium',
      color: textColor,
      fontSize: 18,
    );
  }


  static TextStyle setStyle({required Color textColor,required double fontSize}) {
    return TextStyle(
      fontFamily: 'ShabnamMedium',
      fontWeight: FontWeight.w700,
      color: textColor,
      fontSize: fontSize,
    );
  }
}
