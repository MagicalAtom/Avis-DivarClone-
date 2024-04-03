import 'package:divar/config/colors.dart';
import 'package:divar/screens/homeScreen/HorizontalListGenerate.dart';
import 'package:divar/screens/homeScreen/Space.dart';
import 'package:divar/screens/homeScreen/VerticalListGenerator.dart';
import 'package:flutter/material.dart';

import 'homeScreen/BreakSection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AvisColors.greyBase,
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Image.asset(
          'assets/images/main/logo.png',
          width: 90,
          fit: BoxFit.cover,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 26),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: CustomScrollView(
            slivers: [
              // hot avis ====================================
              SliverToBoxAdapter(
                child: breakSection(text: 'آویز های داغ',context: context),
              ),
              height(24),
              VerticalList(),
              height(32),
              SliverToBoxAdapter(
                child: breakSection(text: 'آویز های اخیر',context: context),
              ),
              height(24),
              HorizontalList(context)
            ],
          ),
        ),
      ),
    );
  }
}
