import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/otp_login_screen.dart';
import 'package:divar/widgets/button.dart';
import 'package:divar/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode textField = FocusNode();
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textField.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    textField.dispose();
    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      'ورود به ',
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
                  height: 24,
                ),
                Text(
                  'خوشحالیم که مجددا آویز رو برای آگهی انتخاب کردی!',
                  style: AvisTextStyle.setStyle(
                      textColor: AvisColors.Grey(500), fontSize: 17),
                ),
                const SizedBox(
                  height: 32,
                ),
                AvisTextField(
                  isOtpUsing: false,
                  textEditingController: textEditingController,
                  focusNode: textField,
                  hintText: 'شماره موبایل',
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const OtpLoginScreen();
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
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'تا حالا ثبت نام کردی ؟',
                      style: AvisTextStyle.setStyle(
                          textColor: AvisColors.Grey(500), fontSize: 17),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'ثبت نام',
                      style: AvisTextStyle.setStyle(
                          textColor: AvisColors.Red(400), fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
