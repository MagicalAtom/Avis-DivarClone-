import 'dart:developer';

import 'package:divar/config/colors.dart';
import 'package:divar/helper/size_config.dart';
import 'package:divar/screens/main_screen.dart';
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
  double width = 0;
  int _currentPage = 0;
  
  int pageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPage = pageController.page!.toInt();
      });
    });
    width = SizeConfig.screenWidth! /5;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = SizeConfig.screenWidth!;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const MainApplication();
                        }),(value) => false);
                      },
                      child: const Icon(
                        Icons.close_outlined,
                        size: 37,
                        color: Color(0xff101828),
                      )),
                  const Spacer(),
                  _currentPage == 2
                      ? Image.asset(
                          'assets/images/main/new.png',
                          width: 70,
                          fit: BoxFit.cover,
                        )
                      : Image.asset(
                          'assets/images/main/category.png',
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                  const Spacer(),
                  Visibility(
                    visible: _currentPage > 0,
                    child: GestureDetector(
                        onTap: () {
                          pageController.animateToPage(_currentPage - 1,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.linear);
                        },
                        child: const Icon(
                          Icons.chevron_right_outlined,
                          size: 45,
                          color: Color(0xff101828),
                        )),
                  ),
                ],
              ),
            ),
          )),
      backgroundColor: AvisColors.greyBase,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
            ),
            PageView(
              physics:
                  const NeverScrollableScrollPhysics(), // چون تا وقتی که چیزی انجام نشده نتونه بره صفحه بعد
              controller: pageController,
              
              onPageChanged: (index) {
                if(pageIndex < index){
                  pageIndicator(index,screenWidth);
                  pageIndex = index;
                }else{
                  if (index >= 0) {
                  width -= screenWidth / 5;
                  }
                  pageIndex = index;
                }
              },
              children: [
                Screen1(controller: pageController),
                Screen2(controller: pageController),
                Screen3(
                  controller: pageController,
                ),
                Screen4(controller: pageController),
                Screen5(controller: pageController),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: LinearPageIndicator(width: width,mediaQuery:screenWidth,index: pageIndex,),
            ),
          ],
        ),
      ),
    );
  }

  pageIndicator(int index,double mediaQuery) {
    log(_currentPage.toString());
    log(index.toString());
    log((mediaQuery /5).toString());
    log("increase ==================>" + width.toString());
   if(index != 0){
      setState(() {
      width += mediaQuery / 5;
    });
   }else{
     setState(() {
      width = mediaQuery / 5;
    });
   }
  }
}
