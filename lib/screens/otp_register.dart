import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/main_screen.dart';
import 'package:divar/widgets/button.dart';
import 'package:divar/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class OtpRegisterScreen extends StatefulWidget {
  const OtpRegisterScreen({super.key});

  @override
  State<OtpRegisterScreen> createState() => _OtpRegisterScreenState();
}

class _OtpRegisterScreenState extends State<OtpRegisterScreen> {
  FocusNode textField1 = FocusNode();
  FocusNode textField2 = FocusNode();
  FocusNode textField3 = FocusNode();
  FocusNode textField4 = FocusNode();

  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();
  TextEditingController textEditingController4 = TextEditingController();

  @override
  void initState() {
    super.initState();
    textField1.addListener(() {
      setState(() {});
    });
    textField2.addListener(() {
      setState(() {});
    });
    textField3.addListener(() {
      setState(() {});
    });
    textField4.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    textField1.dispose();
    textField2.dispose();
    textField3.dispose();
    textField4.dispose();
    textEditingController.dispose();
    textEditingController2.dispose();
    textEditingController3.dispose();
    textEditingController4.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'تایید شماره موبایل',
                      style: AvisTextStyle.h6(
                        textColor: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'کد ورود پیامک شده را وارد کنید',
                  style: AvisTextStyle.setStyle(
                      textColor: AvisColors.Grey(500), fontSize: 17),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Expanded(
                        child: AvisTextField(
                            hintText: 'اینجا',
                            isOtpUsing: true,
                            autofocus: true,
                            textEditingController: textEditingController,
                            focusNode: textField1)),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: AvisTextField(
                            hintText: '',
                            isOtpUsing: true,
                            textEditingController: textEditingController2,
                            focusNode: textField2)),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: AvisTextField(
                            hintText: '',
                            isOtpUsing: true,
                            textEditingController: textEditingController3,
                            focusNode: textField3)),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: AvisTextField(
                            hintText: '',
                            isOtpUsing: true,
                            textEditingController: textEditingController4,
                            focusNode: textField4)),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const MainApplication();
                        }));
                      },
                      child: Button(
                        text: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'تایید ثبت نام',
                              style: AvisTextStyle.h6(
                                  textColor: AvisColors.greyBase),
                            ),
                          
                          ],
                        ),
                        background: AvisColors.Red(400),
                        textColor: AvisColors.greyBase,
                        height: 54,
                      ),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
             
              ],
            ),
          ),
        ),
      ),
    );
  }
}
