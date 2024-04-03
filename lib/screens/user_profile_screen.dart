import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/UserProfileScreen/UserProfileBox.dart';
import 'package:divar/widgets/user_profile_section.dart';
import 'package:flutter/material.dart';

import 'UserProfileScreen/SearchBox.dart';

class UserProfileScreen extends StatelessWidget {
   UserProfileScreen({super.key});
  List<String> settingsItemTitle = [
    "آگهی های من",
    "پرداخت های من",
    "بازدید های اخیر",
    "ذخیره شده ها",
    "تنظیمات",
    "پشتیبانی و قوانین",
    "درباره آویز"
  ];
  List<String> settingsIcon = [
    "note-2.png",
    "card.png",
    "eye.png",
    "save-2.png",
    "setting.png",
    "message-question.png",
    "info-circle.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Image.asset(
          'assets/images/main/logo.png',
          width: 90,
          fit: BoxFit.cover,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  SearchBox(),
                  const SizedBox(
                    height: 32,
                  ),
                  _PageTitle(),
                  const SizedBox(
                    height: 32,
                  ),
                  UserProfileBox(),
                  const SizedBox(
                    height: 32,
                  ),
                 ...List.generate(settingsItemTitle.length, (index) {
                  return Column(
                    children: [
                    UserProfileItems(text: settingsItemTitle[index], icon: settingsIcon[index]),
                    SizedBox(height: 16,),
                    ],
                  );
                 }),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'نسخه',
                            style: AvisTextStyle.setStyle(
                                textColor: AvisColors.Grey(400), fontSize: 16),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '1.5.4',
                            style: AvisTextStyle.setStyle(
                                textColor: AvisColors.Grey(400), fontSize: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row _PageTitle() {
    return Row(
      children: [
        Image.asset('assets/images/icons/profile.png'),
        const SizedBox(
          width: 8,
        ),
        Text(
          'حساب کاربری',
          style: AvisTextStyle.setStyle(
              textColor: const Color(0xff101828), fontSize: 18),
        ),
      ],
    );
  }
}
