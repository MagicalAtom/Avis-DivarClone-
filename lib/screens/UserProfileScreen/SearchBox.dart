// using global
import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/material.dart';

Widget SearchBox() {
  return Container(
    padding: EdgeInsets.all(10),
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: AvisColors.Grey(200)),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          Image.asset('assets/images/icons/search-normal.png'),
          const SizedBox(width: 10,),
          Text('جستجو ...',style:  AvisTextStyle.h6(textColor: AvisColors.Grey(300)),),
        ],
      ),
    ),
  );
}