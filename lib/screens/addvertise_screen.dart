import 'dart:async';

import 'package:divar/components/advertise_page_appBar.dart';
import 'package:divar/components/advertise_screen_tab_bar_section/description_section.dart';
import 'package:divar/components/advertise_screen_tab_bar_section/facility_section.dart';
import 'package:divar/components/advertise_screen_tab_bar_section/price_section.dart';
import 'package:divar/components/advertise_screen_tab_bar_section/property_section.dart';
import 'package:divar/components/tabar.dart';
import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/login_screen.dart';
import 'package:divar/screens/register_screen.dart';
import 'package:divar/widgets/button.dart';
import 'package:divar/widgets/newAdvertise/category_items.dart';
import 'package:flutter/material.dart';

class AddvertiseScreen extends StatefulWidget {
   AddvertiseScreen({super.key,required this.image,required this.title});
   String image;
   String title;

  @override
  State<AddvertiseScreen> createState() => _AddvertiseScreenState();
}

class _AddvertiseScreenState extends State<AddvertiseScreen> {
  List<String> tabs = [
    'مشخصات',
    'قیمت',
    'ویژگی و امکانات',
    'توضیحات',
  ];
  int tabSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _floatingActionButtons(),
        backgroundColor: AvisColors.greyBase,
        appBar: const AppBarAdvertisePage(),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: DefaultTabController(
              length: 4,
              child: CustomScrollView(
                slivers: [
                  // product Image ===============
                  SliverToBoxAdapter(
                    child: Hero(
                      tag: widget.image,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image:  DecorationImage(
                              image: AssetImage(widget.image),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 32),
                  ),

                  // section Product ===============
                  SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            color: AvisColors.Grey(100),
                          ),
                          child: Center(
                            child: Text(
                              'آپارتمان',
                              style: AvisTextStyle.setStyle(
                                  textColor: AvisColors.Red(400), fontSize: 17),
                            ),
                          ),
                        ),
                        Text(
                          '16 دقیقه پیش در گرگان',
                          style: AvisTextStyle.setStyle(
                              textColor: AvisColors.Grey(300), fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 28),
                  ),

                  // Title Product ===============
                  SliverToBoxAdapter(
                    child: Row(
                      children: [
                        Text(
                          widget.title,
                          style: AvisTextStyle.setStyle(
                              textColor: Colors.black, fontSize: 17),
                        ),
                      ],
                    ),
                  ),

                  SliverToBoxAdapter(
                    child: SizedBox(height: 28),
                  ),

                  // Alert Section ===============
                  SliverToBoxAdapter(
                      child: CategoryItem(
                    text: 'هشدار های قبل معامله',
                    iconColor: AvisColors.Grey(300),
                  )),

                  SliverToBoxAdapter(
                    child: SizedBox(height: 28),
                  ),

                  // TabBar Section ===============
                  SliverToBoxAdapter(
                    child: EasyAnimatedTabBar(
                      activeBorderRadius: 4,
                      minWidthOfItem: 88,
                      activeTextStyle: AvisTextStyle.setStyle(
                          textColor: AvisColors.greyBase, fontSize: 16),
                      activeItemColor: AvisColors.Red(400),
                      deActiveItemColor: AvisColors.greyBase,
                      deActiveTextStyle: AvisTextStyle.setStyle(
                          textColor: AvisColors.Red(400), fontSize: 16),
                      selectedIndex: tabSelected,
                      buttonTitles: tabs,
                      onSelected: (index) {
                        setState(() {
                          tabSelected = index;
                        });
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 24),
                  ),
                  SliverToBoxAdapter(
                    child: IndexedStack(
                      index: tabSelected,
                      children: [
                        Visibility(
                            visible: tabSelected == 0,
                            child: const PropertySection()),
                        Visibility(
                            visible: tabSelected == 1,
                            child: const PriceSection()),
                        Visibility(
                            visible: tabSelected == 2,
                            child: const FacilitySection()),
                        Visibility(
                            visible: tabSelected == 3,
                            child: const DescriptionText()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class _floatingActionButtons extends StatelessWidget {
  const _floatingActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      child: Row(
        children: [
          Expanded(
              child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const LoginScreen();
              }));
            },
            child: Button(
              text:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/icons/call.png'),
                  const SizedBox(width: 8,),
                  Text('اطلاعات تماس',style: AvisTextStyle.h6(textColor: AvisColors.greyBase),),
                ],
              ),
              background: AvisColors.Red(400),
              height: 50,
            ),
          )),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const RegisterScreen();
              }));
            },
            child: Button(
              text:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/icons/call.png'),
                  const SizedBox(width: 8,),
                  Text('گفتگو',style: AvisTextStyle.h6(textColor: AvisColors.greyBase),),
                ],
              ),
              background: AvisColors.Red(400),
              height: 53,
            ),
          )),
        ],
      ),
    );
  }
}
