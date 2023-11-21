import 'package:animate_do/animate_do.dart';
import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/login/login_screen.dart';
import 'package:divar/screens/register/register_screen.dart';
import 'package:divar/widgets/button.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AvisColors.greyBase,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 400,
              ),
              Positioned(
                top: 140,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/splash/back.png',
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 190,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/splash/back.png',
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 240,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/splash/back.png',
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 100,
                child: FadeInDown(
                  child: Image.asset(
                    'assets/images/splash/splash-screen.png',
                    width: 290,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInRight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'اینجا محل',
                          style: AvisTextStyle.setStyle(
                              textColor: Colors.black, fontSize: 22),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset('assets/images/main/logo.png'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'آگهی شماست',
                          style: AvisTextStyle.setStyle(
                              textColor: Colors.black, fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  FadeInRight(
                    child: Column(
                      children: [
                        Text(
                          'در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید',
                          style: AvisTextStyle.setStyle(
                              textColor: AvisColors.Grey(500), fontSize: 16),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'و یا اگر دنبال ملک با مشخصات دلخواه خود هستید',
                          style: AvisTextStyle.setStyle(
                              textColor: AvisColors.Grey(500), fontSize: 16),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'آویز ها را ببینید',
                          style: AvisTextStyle.setStyle(
                              textColor: AvisColors.Grey(500), fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const LoginScreen();
                      }));
                    },
                    child: Button(
                      text: Text(
                        'ورود',
                        style: AvisTextStyle.h6(textColor: AvisColors.Red(400)),
                      ),
                      borderColor: AvisColors.Red(400),
                      height: 50,
                    ),
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const RegisterScreen();
                      }));
                    },
                    child: Button(
                      text: Text(
                        'ثبت نام',
                        style: AvisTextStyle.h6(textColor: AvisColors.greyBase),
                      ),
                      background: AvisColors.Red(400),
                      height: 53,
                    ),
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
