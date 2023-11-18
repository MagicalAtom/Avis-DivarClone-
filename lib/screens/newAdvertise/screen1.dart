import 'package:divar/config/colors.dart';
import 'package:divar/widgets/newAdvertise/category_items.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key, required this.controller});
  PageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  controller.animateToPage(1,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.linear);
                },
                child: CategoryItem(
                  text: 'اجاره مسکونی',
                  iconColor: AvisColors.Red(400),
                )),
            GestureDetector(
                onTap: () {
                  controller.animateToPage(1,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.linear);
                },
                child: CategoryItem(
                  text: 'اجاره مسکونی',
                  iconColor: AvisColors.Red(400),
                )),
            GestureDetector(
                onTap: () {
                  controller.animateToPage(1,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.linear);
                },
                child: CategoryItem(
                  text: 'اجاره مسکونی',
                  iconColor: AvisColors.Red(400),
                )),
            GestureDetector(
                onTap: () {
                  controller.animateToPage(1,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.linear);
                },
                child: CategoryItem(
                  text: 'اجاره مسکونی',
                  iconColor: AvisColors.Red(400),
                )),
            GestureDetector(
                onTap: () {
                  controller.animateToPage(1,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.linear);
                },
                child: CategoryItem(
                  text: 'اجاره مسکونی',
                  iconColor: AvisColors.Red(400),
                )),
            GestureDetector(
                onTap: () {
                  controller.animateToPage(1,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.linear);
                },
                child: CategoryItem(
                  text: 'اجاره مسکونی',
                  iconColor: AvisColors.Red(400),
                )),
          ],
        ),
      ),
    );
  }
}
