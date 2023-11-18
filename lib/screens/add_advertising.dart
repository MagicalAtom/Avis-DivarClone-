import 'package:divar/components/advertise_appBar.dart';
import 'package:divar/config/colors.dart';
import 'package:divar/screens/newAdvertise/screen1.dart';
import 'package:divar/screens/newAdvertise/screen2.dart';
import 'package:divar/screens/newAdvertise/screen3.dart';
import 'package:divar/screens/newAdvertise/screen4.dart';
import 'package:divar/screens/newAdvertise/screen5.dart';
import 'package:divar/widgets/linearPageIndicator.dart';
import 'package:flutter/material.dart';

class NewAdvertising extends StatefulWidget {
  const NewAdvertising({super.key});

  @override
  State<NewAdvertising> createState() => _NewAdvertisingState();
}

class _NewAdvertisingState extends State<NewAdvertising> {
  PageController pageController = PageController();
  double width = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarAdvertise(),
      backgroundColor: AvisColors.greyBase,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
            ),
            PageView(
              controller: pageController,
              onPageChanged: (index) => pageIndicator(index),
              children: [
                 Screen1(controller:pageController),
                 Screen2(controller:pageController),
                const Screen3(),
                Screen4(),
                const Screen5(),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: LinearPageIndicator(width: width),
            ),
          ],
        ),
      ),
    );
  }

  pageIndicator(int index) {
    switch (index) {
      case 0:
        setState(() {
          width = 90;
        });
        break;
      case 1:
        setState(() {
          width = 190;
        });
        break;
      case 2:
        setState(() {
          width = MediaQuery.of(context).size.width - 110;
        });
        break;
      case 3:
        setState(() {
          width = MediaQuery.of(context).size.width - 50;
        });
        break;
      case 4:
        setState(() {
          width = MediaQuery.of(context).size.width - 0;
        });
        break;
    }
  }
}
