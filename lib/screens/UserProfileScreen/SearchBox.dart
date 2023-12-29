// using global
import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/material.dart';

Widget SearchBox() {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: AvisColors.Grey(200)),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Center(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          //
          style: AvisTextStyle.h6(textColor: AvisColors.Grey(300)),
          decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintStyle: AvisTextStyle.h6(textColor: AvisColors.Grey(300)),
              hintText: 'جستجو...',
              prefixIcon:
              Image.asset('assets/images/icons/search-normal.png')),
        ),
      ),
    ),
  );
}