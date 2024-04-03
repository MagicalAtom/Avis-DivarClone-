
import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/material.dart';

Widget UserProfileBox() {
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
                      width: 65,
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