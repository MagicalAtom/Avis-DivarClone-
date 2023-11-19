import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/ext/nextTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AvisTextField extends StatelessWidget {
  AvisTextField({
    super.key,
    required this.hintText,
    required this.textEditingController,
    required this.focusNode,
    required this.isOtpUsing,
    this.autofocus = false,
    this.otpFocusColor = Colors.white,
    this.longField = false,
  });

  FocusNode focusNode;
  TextEditingController? textEditingController;
  String hintText;
  bool isOtpUsing;
  Color otpFocusColor;
  bool autofocus;
  bool longField;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: longField ? 120 : 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Directionality(
        textDirection:
            focusNode.hasFocus ? TextDirection.ltr : TextDirection.rtl,
        child: TextField(
          onChanged: isOtpUsing ? (value){
            if(value.isNotEmpty){
              FocusScope.of(context).nextFocus();
            }
          } : null,
          autofocus:  autofocus ? true : false,
          controller: textEditingController,
          style: AvisTextStyle.h6(textColor: focusNode.hasFocus && isOtpUsing ? Colors.black : AvisColors.Grey(300)),
          focusNode: focusNode,
          maxLines:  longField ? 3 : 1,
          maxLength: isOtpUsing ? 1 : 100,
          textDirection:
              focusNode.hasFocus ? TextDirection.ltr : TextDirection.rtl,
          decoration: InputDecoration(
            counter: const Offstage(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6)
            ),
              filled: true,
              fillColor: focusNode.hasFocus && isOtpUsing
                  ? AvisColors.Grey(200)
                  : AvisColors.Grey(100),
              contentPadding: const EdgeInsets.all(18),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6)
            ),
              enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none
              
            ),
              hintText: focusNode.hasFocus ? '' : hintText,
              hintStyle: AvisTextStyle.h6(textColor: AvisColors.Grey(300))),
        ),
      ),
    );
  }
}
