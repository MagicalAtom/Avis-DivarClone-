import 'package:divar/helper/size_config.dart';
import 'package:divar/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AvisApplication());

class AvisApplication extends StatelessWidget {
  const AvisApplication({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Avis Home',
      home: OnBoarding(),
    );
  }
} 