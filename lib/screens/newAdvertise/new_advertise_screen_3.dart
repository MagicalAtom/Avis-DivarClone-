import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/newAdvertise/Widgets/GenerateRowSectionCategory.dart';
import 'package:divar/screens/newAdvertise/Widgets/GenerateRowSectionFeature.dart';
import 'package:divar/widgets/button.dart';
import 'package:divar/widgets/newAdvertise/feature_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  Screen3({super.key, required this.controller});

  PageController controller;

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  // drop down button options , The widget is written at the bottom of the page
  List<String> items = [
    'فروش آپارتمان',
    'فروش آپارتمان2',
    'فروش آپارتمان3',
    'فروش آپارتمان4',
    'فروش آپارتمان5',
  ];

  // meter controller
  int meterint = 350;
  TextEditingController meter = TextEditingController();

  // room controller
  int room = 6;
  TextEditingController rooms = TextEditingController();

  // section controller
  int section = 3;
  TextEditingController sections = TextEditingController();

  // year made it controller
  int made = 1402;
  TextEditingController madeit = TextEditingController();

// switch button State
  bool elevator = false;
  bool parking = false;
  bool Store = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      meter = TextEditingController(text: meterint.toString());
      rooms = TextEditingController(text: room.toString());
      sections = TextEditingController(text: section.toString());
      madeit = TextEditingController(text: made.toString());
    });
  }

  @override
  void dispose() {
    super.dispose();
    meter.dispose();
    rooms.dispose();
    sections.dispose();
    madeit.dispose();
  }

  String dropdownValue = 'فروش آپارتمان';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/icons/category-2.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'دسته بندی آویز',
                        style: AvisTextStyle.setStyle(
                            textColor: const Color(0xff101828), fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  //********* کل محدوده مشخص شده یک ردیف را تعیین *********/

                  GenerateRowSectionCategory(
                      CategoryTitle: 'دسته بندی',
                      CategoryItems: items,
                      DropdownValue: dropdownValue,
                      onSelected: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      secondTitle: 'محدوده ملک'),

                  //******************/
                  const SizedBox(
                    height: 64,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/icons/clipboard.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'ویژگی ها',
                        style: AvisTextStyle.setStyle(
                            textColor: const Color(0xff101828), fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  GenerateRowSectionFeature(
                      firstTitle: 'متراژ',
                      firstController: meter,
                      secondTitle: 'تعداد اتاق',
                      secondController: rooms),
                  const SizedBox(
                    height: 32,
                  ),
                  GenerateRowSectionFeature(
                      firstTitle: 'سال ساخت',
                      firstController: madeit,
                      secondTitle: 'طبقه',
                      secondController: sections),
                  const SizedBox(
                    height: 64,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/icons/magicpen.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'امکانات',
                        style: AvisTextStyle.setStyle(
                            textColor: const Color(0xff101828), fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  FeatureItem(
                    text: 'آسانسور',
                    value: elevator,
                    onToggle: (value) {
                      setState(() {
                        elevator = elevator ? false : true;
                      });
                    },
                  ),
                  FeatureItem(
                    text: 'پارکینگ',
                    value: parking,
                    onToggle: (value) {
                      setState(() {
                        parking = parking ? false : true;
                      });
                    },
                  ),
                  FeatureItem(
                    text: 'انباری',
                    value: Store,
                    onToggle: (value) {
                      setState(() {
                        Store = Store ? false : true;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.controller.animateToPage(3,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.linear);
                    },
                    child: Button(
                      height: 54,
                      background: AvisColors.Red(400),
                      text: Text(
                        'بعدی',
                        style: AvisTextStyle.h6(textColor: AvisColors.greyBase),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

//========================================================================
}
