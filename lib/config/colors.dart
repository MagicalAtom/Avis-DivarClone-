import 'package:flutter/material.dart';

class AvisColors {
  static Color Red(shade) {
    switch (shade) {
      case 100:
        return const Color(0xffffdede);
      case 200:
        return const Color(0xffffa5a8);
      case 300:
        return const Color(0xffff6269);
      case 400:
        return const Color(0xffE60023); // main
      case 500:
        return const Color(0xffa40016);
      case 600:
        return const Color(0xff670009);
      case 700:
        return const Color(0xff2e0002);
      default:
        return Colors.red;
    }
  }

  static Color Purple(shade) {
    switch (shade) {
      case 100:
        return const Color(0xfff2efff);
      case 200:
        return const Color(0xffd3c8fe);
      case 300:
        return const Color(0xffb198fd);
      case 400:
        return const Color(0xff9265fc);
      case 500:
        return const Color(0xff7616fa);
      case 600:
        return const Color(0xff4E08AA); // Main
      case 700:
        return const Color(0xff29025f);
      default:
        return Colors.purple;
    }
  }

  static Color Grey(shade) {
    switch (shade) {
      case 100:
        return const Color(0xffEAEEEC);
      case 200:
        return const Color(0xffC0C7C3);
      case 300:
        return const Color(0xff9BA09D);
      case 400:
        return const Color(0xff767A78);
      case 500:
        return const Color(0xff545756);
      case 600:
        return const Color(0xff343635);
      case 700:
        return const Color(0xff171817);
      default:
        return Colors.grey;
    }
  }

static const Color greyBase = Color(0xffFFFFFF);


}


