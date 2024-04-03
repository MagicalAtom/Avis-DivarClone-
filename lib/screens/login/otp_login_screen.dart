import 'dart:async';

import 'package:divar/components/otp_field.dart';
import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/home_screen.dart';
import 'package:divar/screens/main_screen.dart';
import 'package:divar/widgets/button.dart';
import 'package:divar/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class OtpLoginScreen extends StatefulWidget {
  const OtpLoginScreen({super.key});

  @override
  State<OtpLoginScreen> createState() => _OtpLoginScreenState();
}

class _OtpLoginScreenState extends State<OtpLoginScreen> {
  int totalTime = 60;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
  }



void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() {
        if (totalTime < 1) {
          timer!.cancel();
        } else {
          totalTime -= 1;
        }
      });
    });
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
                  // textField Otp ========================================================
            OtpTextField(
            crossAxisAlignment: CrossAxisAlignment.start,
            autoFocus: true,
            fieldWidth: 60,
            fieldHeight: 60,
            margin: EdgeInsets.symmetric(horizontal: 10),
            textStyle: AvisTextStyle.h6(textColor: Colors.grey[700]!),
            borderRadius: BorderRadius.circular(10),
            numberOfFields: 4,
            borderColor: Colors.red,
            focusedBorderColor:AvisColors.Grey(100),
            showFieldAsBox: false,
            fillColor: AvisColors.Grey(100),
            filled: true,
            onCodeChanged: (String code) {
              print(code);  
            },
            //runs when every textfield is filled 
            onSubmit: (String verificationCode) {
               Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder:(context) {
                return MainApplication();
              },),(route)=>false);
            }, 
    ),




                  // textField Otp ========================================================
                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('00:$totalTime',style: AvisTextStyle.setStyle(textColor: Colors.black,fontSize: 16),),
                    const SizedBox(width: 4,),

                    totalTime == 00 ? GestureDetector(onTap: (){setState(() {
                      totalTime = 60;
                      startTimer();
                    });},child: Text('ارسال مجدد',style: AvisTextStyle.setStyle(textColor: AvisColors.Grey(500),fontSize: 18),)) : const Text(''), 
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
                              'تایید ورود',
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
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
