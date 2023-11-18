
import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/material.dart';

class UserProfileItems extends StatelessWidget {
   UserProfileItems({super.key,required this.text,required this.icon});
  String text;
  String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
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
              Row(
                children: [
                  Image.asset('assets/images/icons/$icon'),
                  SizedBox(width: 12,),
                  Text(text,style: AvisTextStyle.h6(textColor: const Color(0xff101828)),),
                ],
              ),
              const Spacer(),
              Transform.scale(scale: 1.4,child: Icon(Icons.chevron_right,size: 30,color: AvisColors.Grey(400))),
            ],
          ),
        ),
      ),
    );
  }
}