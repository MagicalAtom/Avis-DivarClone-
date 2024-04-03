import 'package:divar/config/colors.dart';
import 'package:flutter/material.dart';

class LinearPageIndicator extends StatelessWidget {
   LinearPageIndicator({
    super.key,
    required this.width,
    required this.mediaQuery,
    required this.index
  });

   double width;
  double mediaQuery;
  int index;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 700),
      width:width,
      height: 8,
      color: AvisColors.Red(400),
    );
  }
}
