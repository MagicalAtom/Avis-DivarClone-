import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 90),
        width: 330,
        child: Text(
          'ویلا ۵۰۰ متری در خیابان صیاد شیرازی ویو عالی وسط جنگل قیمت فوق العاده  گذاشتم فروش فوری  خریدار باشی تخفیف پای معامله میدم.',
          style: AvisTextStyle.h6(textColor: AvisColors.Grey(400)),
        ));
  }
}
