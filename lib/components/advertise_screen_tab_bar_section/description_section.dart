import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
   DescriptionText({super.key,required this.description});
   String description;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 90),
        width: 330,
        child: Text(
          description,
          style: AvisTextStyle.h6(textColor: AvisColors.Grey(400)),
        ));
  }
}
