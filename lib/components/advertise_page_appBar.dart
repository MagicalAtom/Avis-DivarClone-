import 'package:flutter/material.dart';
// اپ بار صفحه تبلیغ

class AppBarAdvertisePage extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarAdvertisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset('assets/images/icons/save.png',width: 26,fit: BoxFit.cover,),
            const SizedBox(
              width: 24,
            ),
            Image.asset('assets/images/icons/share.png',width: 26,fit: BoxFit.cover,),
            const SizedBox(
              width: 24,
            ),
            Image.asset('assets/images/icons/info.png',width: 26,fit: BoxFit.cover,),
            const SizedBox(
              width: 24,
            ),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child:  Icon(
                  Icons.chevron_right_outlined,
                  size: 45,
                  color: const Color(0xff101828).withOpacity(.6),
                )),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
