import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/view_all_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget breakSection({required String text,required BuildContext context}) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AvisTextStyle.h6(textColor: Colors.black),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context){
              return ViewAllScreen();
            }));
          },
          child: Text(
            'مشاهده همه',
            style: AvisTextStyle.setStyle(
                textColor: AvisColors.Grey(200), fontSize: 16),
          ),
        ),
      ],
    ),
  );
}

