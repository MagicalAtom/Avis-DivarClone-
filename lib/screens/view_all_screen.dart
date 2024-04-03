import 'package:divar/config/colors.dart';
import 'package:divar/screens/homeScreen/HorizontalListGenerate.dart';
import 'package:flutter/material.dart';

class ViewAllScreen extends StatelessWidget {
  const ViewAllScreen({super.key});

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
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: CustomScrollView(
          slivers: [HorizontalList(context)],
        ),
      ),
    );
  }
}
