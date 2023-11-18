import 'package:animate_do/animate_do.dart';
import 'package:divar/config/colors.dart';
import 'package:divar/widgets/newAdvertise/category_items.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key, required this.controller});
  PageController controller;
  List<String> sectionTitle = [
    'اجاره مسکونی',
    'فروش مسکونی',
    'فروش دفاتر اداری و تجاری',
    'اجاره دفاتر اداری و تجاری',
    'اجاره کوتاه مدت',
    'پروژه های ساخت و ساز'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 470,
              child: ListView.builder(
                itemCount: sectionTitle.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        controller.animateToPage(1,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.linear);
                      },
                      child: CategoryItem(
                        text: sectionTitle[index],
                        iconColor: AvisColors.Red(400),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
