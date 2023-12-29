import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/material.dart';

Widget breakSection({required String text}) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AvisTextStyle.h6(textColor: Colors.black),
        ),
        Text(
          'مشاهده همه',
          style: AvisTextStyle.setStyle(
              textColor: AvisColors.Grey(200), fontSize: 16),
        ),
      ],
    ),
  );
}

