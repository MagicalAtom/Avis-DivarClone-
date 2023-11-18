import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
   CategoryItem({super.key,required this.text,required this.iconColor});
  String text;
  Color iconColor;



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 16),
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(width: .7,color: AvisColors.Grey(200)),
        borderRadius: BorderRadius.circular(6)

      ),
      child: Center(  
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(height: double.infinity,),
              Text(text,style: AvisTextStyle.h6(textColor: const Color(0xff101828)),),
              const Spacer(),
              Transform.scale(scale: 1.4,child: Icon(Icons.chevron_right,size: 30,color: iconColor)),
            ],
          ),
        ),
      ),
    );
  }
}