import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/widgets/button.dart';
import 'package:divar/widgets/newAdvertise/feature_items.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  Screen4({super.key, required this.controller});
  PageController controller;
  // موارد صفحه های قبل هم اینجا میشه دریافت کرد

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AvisColors.greyBase,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/icons/map.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'موقعیت مکانی',
                      style: AvisTextStyle.setStyle(
                          textColor: const Color(0xff101828), fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'بعد انتخاب محل دقیق روی نقشه میتوانید نمایش آن را فعال یا غیر فعال کید تا حریم خصوصی شما خفظ شود.',
                  style: AvisTextStyle.setStyle(
                      textColor: AvisColors.Grey(400), fontSize: 16),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 144,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/main/maps.png'),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Container(
                      width: 185,
                      height: 45,
                      decoration: BoxDecoration(
                          color: AvisColors.Red(400),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 130,
                                  child: Text(
                                    'گرگان , خیابان صیاد شیرازی',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: AvisTextStyle.setStyle(
                                        textColor: AvisColors.greyBase,
                                        fontSize: 16),
                                  )),
                              const SizedBox(
                                width: 12,
                              ),
                              Image.asset('assets/images/icons/location.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                FeatureItem(
                  text: 'موقعیت دقیق نقشه نمایش داده شود ؟',
                  value: value,
                  onToggle: (p0) {
                    setState(() {
                      value = value ? false : true;
                    });
                  },
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    widget.controller.animateToPage(4,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.linear);
                  },
                  child: Button(
                    height: 54,
                    background: AvisColors.Red(400),
                    text: Text(
                      'بعدی',
                      style: AvisTextStyle.h6(textColor: AvisColors.greyBase),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
