import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class FeatureItem extends StatelessWidget {

  FeatureItem(
      {super.key,
      required this.text,
      required this.value,
      required this.onToggle});
  String text;
  bool value;
  VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 16),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
          border: Border.all(width: .7, color: AvisColors.Grey(200)),),
      child: InkWell(
        onTap: onToggle,
        child: Center(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: double.infinity,
                ),
                Text(
                  text,
                  style: AvisTextStyle.h6(textColor: const Color(0xff101828)),
                ),
                const Spacer(),
                Transform.scale(
                    scale: 1,
                    child: FlutterSwitch(
                      value: value,
                      onToggle: (value){ },
                      activeColor: AvisColors.Red(400),
                      inactiveColor: AvisColors.Grey(300),
                      width: 30,
                      height: 22,
                      toggleSize: 10,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
