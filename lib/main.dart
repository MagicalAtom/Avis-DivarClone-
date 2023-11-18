import 'package:divar/screens/add_advertising.dart';
import 'package:divar/screens/addvertise_screen.dart';
import 'package:divar/screens/main_screen.dart';
import 'package:divar/screens/onboarding_screen.dart';
import 'package:divar/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AvisApplication());

class AvisApplication extends StatelessWidget {
  const AvisApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Avis Home',
      home: OnBoarding(),
    );
  }
} 