import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/UserProfileScreen/UserProfileBox.dart';
import 'package:divar/widgets/user_profile_section.dart';
import 'package:flutter/material.dart';

import 'UserProfileScreen/SearchBox.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

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
                  UserProfileItems(text: 'آگهی های من', icon: 'note-2.png'),
                  const SizedBox(
                    height: 16,
                  ),
                  UserProfileItems(text: 'پرداخت های من', icon: 'card.png'),
                  const SizedBox(
                    height: 16,
                  ),
                  UserProfileItems(text: 'بازدید های اخیر', icon: 'eye.png'),
                  const SizedBox(
                    height: 16,
                  ),
                  UserProfileItems(text: 'ذخیره شده ها', icon: 'save-2.png'),
                  const SizedBox(
                    height: 16,
                  ),
                  UserProfileItems(text: 'تنظیمات', icon: 'setting.png'),
                  const SizedBox(
                    height: 16,
                  ),
                  UserProfileItems(
                      text: 'پشتیبانی و قوانین', icon: 'message-question.png'),
                  const SizedBox(
                    height: 16,
                  ),
                  UserProfileItems(
                      text: 'درباره آویز', icon: 'info-circle.png'),
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
