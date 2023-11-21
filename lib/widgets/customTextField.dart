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
      required this.isOtpUsing,
      this.autofocus = false,
      this.otpFocusColor = Colors.white,
      this.longField = false,
      this.isLtrField = false,
      this.LastTextField = false});

  FocusNode focusNode;
  TextEditingController? textEditingController;
  String hintText;

  /// این هم اگه روشن بشه تکست فیلد کوچک میشه .
  bool isOtpUsing;

  /// اگه قراره مثل تکست فیلد های او تی پی موقع فوکوس رنگش تغییر کنه
  Color otpFocusColor;

  /// اگه میخواین مثل بقش او تی پی فوکوس خودکار داشته باشه
  bool autofocus;

  /// اگه تکست فیلد طولانی میخواین
  bool longField;

  /// این هم برای روشن کردن حالت راست به چپ برای تکست فیلد هایی که قراره متن انگلیسی داشته باشن روشن باشه
  bool isLtrField;

  bool LastTextField;

  /// only using otp
  /*
  مقدار
   LastTextField
   هم برای این قرار داده شده که اگه به دلخواه در آخرین تکست فیلد او تی پی قرار بگیره مستقیم کاربر رو به صفحه هوم انتقال بده
  */
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
          keyboardType: isOtpUsing ? TextInputType.number : TextInputType.text,
          onChanged: isOtpUsing
              ? (value) {
                  if (value.isNotEmpty) {
                    if (LastTextField) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const MainApplication();
                      }));
                    } else {
                      FocusScope.of(context).nextFocus();
                    }
                  }
                }
              : null,
          autofocus: autofocus ? true : false,
          controller: textEditingController,
          style: AvisTextStyle.h6(
              textColor: focusNode.hasFocus && isOtpUsing
                  ? Colors.black
                  : AvisColors.Grey(300)),
          focusNode: focusNode,
          maxLines: longField ? 3 : 1,
          maxLength: isOtpUsing ? 1 : 100,
          textDirection: focusNode.hasFocus && isLtrField
              ? TextDirection.ltr
              : TextDirection.rtl,
          decoration: InputDecoration(
              counter: const Offstage(),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
              filled: true,
              fillColor: focusNode.hasFocus && isOtpUsing
                  ? AvisColors.Grey(200)
                  : AvisColors.Grey(100),
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
