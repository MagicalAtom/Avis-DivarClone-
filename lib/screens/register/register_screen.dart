import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/register/otp_register.dart';
import 'package:divar/widgets/button.dart';
import 'package:divar/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  FocusNode textField = FocusNode();
  FocusNode textField2 = FocusNode();
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  @override
  void initState() {
    super.initState();
      textField.addListener(() {
       setState(() {});
      });
        textField2.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    textField.dispose();
    textField2.dispose();
    textEditingController.dispose();
    textEditingController2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // کیبورد باز شد اسکفولد ریسایز نشه
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
                      'خوش اومدی به',
                      style: AvisTextStyle.h6(
                        textColor: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      'assets/images/main/logo.png',
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'این فوق العادست که آویزو برای آگهی هات انتخاب کردی!',
                  style: AvisTextStyle.setStyle(
                      textColor: AvisColors.Grey(500), fontSize: 16),
                ),
                const SizedBox(
                  height: 32,
                ),
                AvisTextField(
                  isOtpUsing: false,
                  textEditingController: textEditingController,
                  focusNode: textField,
                  hintText: 'نام و نام خانوادگی',
                  isLtrField: false,
                ),
                const SizedBox(height: 16,),
                  AvisTextField(
                  isOtpUsing: false,
                  textEditingController: textEditingController2,
                  focusNode: textField2,
                  hintText: 'شماره موبایل',
                  isLtrField: true,
                  isIntKeyboard: true,
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const OtpRegisterScreen();
                          },
                        ));
                      },
                      child: Button(
                        text: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'مرحله بعد',
                              style: AvisTextStyle.h6(
                                  textColor: AvisColors.greyBase),
                            ),
                            const Icon(
                              Icons.chevron_right,
                              size: 40,
                              color: AvisColors.greyBase,
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
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'قبلا ثبت نام کردی؟',
                        style: AvisTextStyle.setStyle(
                            textColor: AvisColors.Grey(500), fontSize: 17),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'ورود',
                        style: AvisTextStyle.setStyle(
                            textColor: AvisColors.Red(400), fontSize: 16),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
