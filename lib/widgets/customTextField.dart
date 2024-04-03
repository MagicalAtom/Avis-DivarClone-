import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/home_screen.dart';
import 'package:divar/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AvisTextField extends StatelessWidget {
  AvisTextField(
      {super.key,
      required this.hintText,
      required this.textEditingController,
      required this.focusNode,
      this.autofocus = false,
      this.longField = false,
      this.isLtrField = false,
      this.isIntKeyboard = false
      });

  FocusNode focusNode;
  TextEditingController? textEditingController;
  String hintText;


  /// اگه میخواین مثل بقش او تی پی فوکوس خودکار داشته باشه
  bool autofocus;

  /// اگه تکست فیلد طولانی میخواین
  bool longField;

  /// این هم برای روشن کردن حالت راست به چپ برای تکست فیلد هایی که قراره متن انگلیسی داشته باشن روشن باشه
  bool isLtrField;



// اگه کیبورد عددی لازمه
  bool isIntKeyboard;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: longField ? 120 : 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Directionality(
        textDirection: focusNode.hasFocus && isLtrField
            ? TextDirection.ltr
            : TextDirection.rtl,
        child: TextField(
          // ************************ Start TextField
          keyboardType: TextInputType.text,
          autofocus: autofocus ? true : false,
          controller: textEditingController,
          focusNode: focusNode,
          maxLines: longField ? 4 : 1,
          maxLength: 100,
          textDirection: focusNode.hasFocus && isLtrField
              ? TextDirection.ltr
              : TextDirection.rtl,
          decoration: InputDecoration(
              counter: const Offstage(),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
              filled: true,
              fillColor: AvisColors.Grey(100),
              contentPadding: const EdgeInsets.all(18),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(6)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide.none),
              hintText: focusNode.hasFocus ? '' : hintText,
              hintStyle: AvisTextStyle.h6(textColor: AvisColors.Grey(300))),
        ),
      ),
    );
  }
}
