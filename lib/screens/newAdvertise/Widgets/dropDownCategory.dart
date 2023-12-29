
// drop Down Widget put here ***=============================================
import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

DropdownMenu<String> DropDown(items,dropdownValue,onSelected) {
  return DropdownMenu<String>(
    textStyle:
    AvisTextStyle.setStyle(textColor: Colors.black45, fontSize: 17),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle:
      AvisTextStyle.setStyle(textColor: Colors.black45, fontSize: 17),
      floatingLabelStyle:
      AvisTextStyle.setStyle(textColor: Colors.black45, fontSize: 17),
      border: OutlineInputBorder(
          borderSide: BorderSide(width: .4, color: AvisColors.Grey(200))),
    ),
    trailingIcon: const Icon(
      CupertinoIcons.chevron_down,
      size: 28,
      color: Colors.black,
    ),
    initialSelection: items.first,
    onSelected:onSelected,
    dropdownMenuEntries: items.map<DropdownMenuEntry<String>>((String value) {
      return DropdownMenuEntry<String>(value: value, label: value);
    }).toList(),
  );
}