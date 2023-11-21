import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/widgets/user_profile_section.dart';
import 'package:flutter/material.dart';

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
                  _SearchBox(),
                  const SizedBox(
                    height: 32,
                  ),
                  _PageTitle(),
                  const SizedBox(
                    height: 32,
                  ),
                  _UserProfileBox(),
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

  Widget _UserProfileBox() {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 110,
      decoration: BoxDecoration(
          border: Border.all(width: .8, color: AvisColors.Grey(200)),
          borderRadius: BorderRadius.circular(6)),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/main/user.png',
              width: 65,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'سید محمد جواد هاشمی',
                        style: AvisTextStyle.setStyle(
                            textColor: const Color(0xff101828), fontSize: 16),
                      ),
                      Image.asset('assets/images/icons/edit.png')
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text(
                        '09150092123',
                        style: AvisTextStyle.setStyle(
                            textColor: const Color(0xff101828), fontSize: 14),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        width: 55,
                        height: 25,
                        decoration: BoxDecoration(
                            color: AvisColors.Red(400),
                            borderRadius: BorderRadius.circular(4)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'تایید شده',
                              style: AvisTextStyle.setStyle(
                                  textColor: AvisColors.greyBase, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
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

  Container _SearchBox() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AvisColors.Grey(200)),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextField(
            //
            style: AvisTextStyle.h6(textColor: AvisColors.Grey(300)),
            decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintStyle: AvisTextStyle.h6(textColor: AvisColors.Grey(300)),
                hintText: 'جستجو...',
                prefixIcon:
                    Image.asset('assets/images/icons/search-normal.png')),
          ),
        ),
      ),
    );
  }
}
