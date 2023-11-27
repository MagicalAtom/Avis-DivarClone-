import 'package:divar/components/new_advertise_page_appBar.dart';
import 'package:divar/config/colors.dart';
import 'package:divar/screens/newAdvertise/new_advertise_screen_1.dart';
import 'package:divar/screens/newAdvertise/new_advertise_screen_2.dart';
import 'package:divar/screens/newAdvertise/new_advertise_screen_3.dart';
import 'package:divar/screens/newAdvertise/new_advertise_screen_4.dart';
import 'package:divar/screens/newAdvertise/new_advertise_screen_5.dart';
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
  int _currentPage = 0;



@override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPage = pageController.page!.toInt();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBarAdvertise(pagenumber: _currentPage,pageController: pageController,),
      backgroundColor: AvisColors.greyBase,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
            ),
            PageView(
              physics: const NeverScrollableScrollPhysics(), // چون تا وقتی که چیزی انجام نشده نتونه بره صفحه بعد
              controller: pageController,
              onPageChanged: (index) => pageIndicator(index),
              children: [
                 Screen1(controller:pageController),
                 Screen2(controller:pageController),
                 Screen3(controller: pageController,),
                Screen4(controller:pageController),
                Screen5(controller:pageController),
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
