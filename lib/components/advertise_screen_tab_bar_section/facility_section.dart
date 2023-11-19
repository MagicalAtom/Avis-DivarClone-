import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class FacilitySection extends StatelessWidget {
  const FacilitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset('assets/images/icons/clipboard.png'),
            const SizedBox(
              width: 8,
            ),
            Text(
              'ویژگی ها',
              style: AvisTextStyle.setStyle(
                  textColor: const Color(0xff101828), fontSize: 18),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        // =============== property
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              border: Border.all(width: .8, color: AvisColors.Grey(200)),borderRadius: BorderRadius.circular(6)),
          height: 110,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Items(
                  title: 'سند : ',
                  value: 'تک برگ',
                ),
                const SizedBox(
                  height: 16,
                ),
                DottedLine(
                  dashColor: AvisColors.Grey(100),
                  dashLength: 8,
                ),
                const SizedBox(
                  height: 16,
                ),
                Items(
                  title: 'جهت ساختمان : ',
                  value: 'شمالی',
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          children: [
            Image.asset('assets/images/icons/magicpen.png'),
            const SizedBox(
              width: 8,
            ),
            Text(
              'امکانات',
              style: AvisTextStyle.setStyle(
                  textColor: const Color(0xff101828), fontSize: 18),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              border: Border.all(width: .8, color: AvisColors.Grey(200)),borderRadius: BorderRadius.circular(6)),
          height: 410,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SingleItems(text: 'آسانسور'),
                _Line(),
                SingleItems(text: 'پارکینگ'),
                _Line(),
                SingleItems(text: 'انباری'),
                _Line(),
                SingleItems(text: 'بالکن'),
                _Line(),
                SingleItems(text: 'پنت هاوس'),
                _Line(),
                SingleItems(text: 'جنس کف سرامیک'),
                _Line(),
                SingleItems(text: 'سرویس بهداشتی ایرانی و فرنگی'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 100,),
      ],
    );
  }

  DottedLine _Line() {
    return DottedLine(
      dashColor: AvisColors.Grey(100),
      dashLength: 8,
    );
  }

  Widget SingleItems({required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: AvisTextStyle.h6(
              textColor: AvisColors.Grey(500),
            ),
          ),
        ],
      ),
    );
  }
}

class Items extends StatelessWidget {
  Items({
    super.key,
    required this.title,
    required this.value,
  });
  String title;
  String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AvisTextStyle.h6(
            textColor: AvisColors.Grey(500),
          ),
        ),
        Text(
          value,
          style: AvisTextStyle.setStyle(
              textColor: AvisColors.Grey(500), fontSize: 16),
        ),
      ],
    );
  }
}
