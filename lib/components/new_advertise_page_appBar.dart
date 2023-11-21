import 'package:divar/screens/main_screen.dart';
import 'package:flutter/material.dart';
// اپ بار صفحه اضافه کردن تبلیغ
// add_advertising.dart

class AppBarAdvertise extends StatelessWidget implements PreferredSizeWidget {
  const AppBarAdvertise({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Row(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const MainApplication();
                  }));
                },
                child: const Icon(
                  Icons.close_outlined,
                  size: 37,
                  color: Color(0xff101828),
                )),
            const Spacer(),
            Image.asset(
              'assets/images/main/category.png',
              width: 120,
              fit: BoxFit.cover,
            ),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.chevron_right_outlined,
                  size: 45,
                  color: Color(0xff101828),
                )),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
