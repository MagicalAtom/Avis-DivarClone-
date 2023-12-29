import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/material.dart';

Widget GenerateRowSectionFeature({
  /// first item , right
  required String firstTitle,
  required TextEditingController firstController,
  /// second item left
  required String secondTitle,
  required TextEditingController secondController,
}) {
  return Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstTitle,
              style: AvisTextStyle.setStyle(
                  textColor: AvisColors.Grey(200), fontSize: 18),
            ),
            const SizedBox(
              height: 16,
            ),

            Container(
              padding: const EdgeInsets.all(6),
              height: 62,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AvisColors.Grey(100)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // first item section ++++====================
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: firstController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(12),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'assets/images/icons/up.png',
                        width: 10,
                        fit: BoxFit.cover,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 25,
      ),
      //second item ==================

      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              secondTitle,
              style: AvisTextStyle.setStyle(
                  textColor: AvisColors.Grey(200), fontSize: 18),
            ),

            const SizedBox(
              height: 16,
            ),

            // اینجا چون دومین فیلد بود قرار گرفته
            Container(
              padding: const EdgeInsets.all(6),
              height: 62,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AvisColors.Grey(100)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: secondController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(12),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'assets/images/icons/up.png',
                        width: 10,
                        fit: BoxFit.cover,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
