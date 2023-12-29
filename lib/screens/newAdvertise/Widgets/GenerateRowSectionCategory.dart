import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/newAdvertise/Widgets/dropDownCategory.dart';
import 'package:flutter/material.dart';

Widget GenerateRowSectionCategory({
  /// first item , right
  required String CategoryTitle,
  required CategoryItems,
  required DropdownValue,
  void Function(String?)? onSelected,



  /// second item left
  required String secondTitle,
}) {
  return Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              CategoryTitle,
              style: AvisTextStyle.setStyle(
                  textColor: AvisColors.Grey(200), fontSize: 18),
            ),
            const SizedBox(
              height: 16,
            ),

            // drop down category
            DropDown(CategoryItems, DropdownValue,onSelected),
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
              height: 62,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AvisColors.Grey(100)),
              child: Center(
                child: Text(
                  'خیابان اصلی', // اینجا هم
                  style:
                  AvisTextStyle.setStyle(fontSize: 20,textColor: AvisColors.Grey(200)),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
