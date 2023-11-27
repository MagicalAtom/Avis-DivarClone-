import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/new_advertising.dart';
import 'package:divar/screens/home_screen.dart';
import 'package:divar/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';

// bottom NavigationBar

class MainApplication extends StatefulWidget {
  const MainApplication({super.key});

  @override
  State<MainApplication> createState() => _MainApplicationState();
}

class _MainApplicationState extends State<MainApplication> {
  int index = 0;

// Routes
  List<Widget> MainPages = [
    const HomeScreen(),
    const NewAdvertising(),
    const NewAdvertising(),
    const UserProfileScreen()
  ];

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      label: 'آویز آگهی ها',
      icon: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Image.asset('assets/images/bottom-icon/adds.png')),
      activeIcon: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Image.asset('assets/images/bottom-icon/adds-active.png')),
    ),
    BottomNavigationBarItem(
      label: 'جستجو',
      icon: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Image.asset('assets/images/bottom-icon/search.png')),
      activeIcon: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Image.asset('assets/images/bottom-icon/search-active.png')),
    ),
    BottomNavigationBarItem(
      label: 'افزودن آویز',
      icon: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Image.asset('assets/images/bottom-icon/add.png')),
      activeIcon: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Image.asset('assets/images/bottom-icon/add-active.png')),
    ),
    BottomNavigationBarItem(
      label: 'آویز من',
      icon: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Image.asset('assets/images/bottom-icon/profile.png')),
      activeIcon: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Image.asset('assets/images/bottom-icon/profile-active.png')),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AvisColors.Red(400),
        unselectedItemColor: AvisColors.Grey(400),
        unselectedLabelStyle: AvisTextStyle.setStyle(
            textColor: AvisColors.Grey(400), fontSize: 14),
        selectedLabelStyle: AvisTextStyle.setStyle(
            textColor: AvisColors.Red(400), fontSize: 14),
        elevation: 0,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        items: items,
      ),
      body: IndexedStack(
        index: index,
        children: MainPages,
      ),
    );
  }
}
