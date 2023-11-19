import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/widgets/button.dart';
import 'package:divar/widgets/newAdvertise/feature_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  Screen3({super.key,required this.controller});
  PageController controller;
  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {

  List<String> items = [
    'فروش آپارتمان',
    'فروش آپارتمان2',
    'فروش آپارتمان3',
    'فروش آپارتمان4',
    'فروش آپارتمان5',
  ];

  // options contrller
  TextEditingController options = TextEditingController();

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

  bool value = false;

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
                  Sections(
                      fitstTitle: 'دسته بندی',
                      controller: options,
                      fitstTitleOne: 'محدوده ملک',
                      controllerOne: options,
                      category: true),
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
                  Sections(
                      fitstTitle: 'متراژ',
                      controller: meter,
                      fitstTitleOne: 'تعداد اتاق',
                      controllerOne: rooms),
                  const SizedBox(
                    height: 32,
                  ),
                  Sections(
                      fitstTitle: 'سال ساخت',
                      controller: madeit,
                      fitstTitleOne: 'طبقه',
                      controllerOne: sections),
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
                    value: value,
                    onToggle: (p0) {
                      setState(() {
                        value = value ? false : true;
                      });
                    },
                  ),
                  FeatureItem(
                    text: 'پارکینگ',
                    value: value,
                    onToggle: (p0) {
                      setState(() {
                        value = value ? false : true;
                      });
                    },
                  ),
                  FeatureItem(
                    text: 'انباری',
                    value: value,
                    onToggle: (p0) {
                      setState(() {
                        value = value ? false : true;
                      });
                    },
                  ),
                  const SizedBox(height: 20,),
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

  Row Sections(
      {required String fitstTitle,
      required TextEditingController controller,
      required String fitstTitleOne,
      required TextEditingController controllerOne,
      bool category = false}) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fitstTitle,
                style: AvisTextStyle.setStyle(
                    textColor: AvisColors.Grey(200), fontSize: 18),
              ),
              const SizedBox(
                height: 16,
              ),
              category
                  ? DropDown()
                  : Container(
                      padding: const EdgeInsets.all(6),
                      height: 62,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AvisColors.Grey(100)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 80,
                            child: TextField(
                              controller: controller,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.all(12),
                              ),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  meterint += 10;
                                });
                              },
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Image.asset(
                                    'assets/images/icons/up.png',
                                    width: 10,
                                    fit: BoxFit.cover,
                                  )))
                        ],
                      ),
                    ),
            ],
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fitstTitleOne,
                style: AvisTextStyle.setStyle(
                    textColor: AvisColors.Grey(200), fontSize: 18),
              ),
              const SizedBox(
                height: 16,
              ),
              category
                  ? Container(
                      height: 62,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AvisColors.Grey(100)),
                      child: Center(
                        child: Text(
                          'خیابان صیاد شیرازی',
                          style:
                              AvisTextStyle.h6(textColor: AvisColors.Grey(300)),
                        ),
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.all(6),
                      height: 62,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AvisColors.Grey(100)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 80,
                            child: TextField(
                              controller: controllerOne,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.all(12),
                              ),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  meterint += 10;
                                });
                              },
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Image.asset(
                                    'assets/images/icons/up.png',
                                    width: 10,
                                    fit: BoxFit.cover,
                                  )))
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }

  DropdownMenu<String> DropDown() {
    return DropdownMenu<String>(
      controller: options,
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
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: items.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
