import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'قیمت هر متر :',
                  style: AvisTextStyle.h6(
                    textColor: Colors.black,
                  ),
                ),
                Text(
                  '46,000,000',
                  style: AvisTextStyle.setStyle(
                      textColor: Colors.black, fontSize: 16),
                ),
              ],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'قیمت کل :',
                  style: AvisTextStyle.h6(
                    textColor: Colors.black,
                  ),
                ),
                Text(
                  '23,230,000,000',
                  style: AvisTextStyle.setStyle(
                      textColor: Colors.black, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
