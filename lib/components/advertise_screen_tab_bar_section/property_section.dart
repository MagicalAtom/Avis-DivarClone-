import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/material.dart';



class PropertySection extends StatelessWidget {
  const PropertySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(
              width: .8,
              color: AvisColors.Grey(200)
            ),
            borderRadius: BorderRadius.circular(6)
          ),
          height: 110,
          child: Row(
            children: [
              Expanded(
                child: Items(title: 'متراژ',value: '500',),
              ),
              Expanded(
                child: Items(title: 'اتاق',value: '6',),
              ),
              Expanded(
                child: Items(title: 'طبقه',value: 'دوبلکس',),
              ),
              Expanded(
                child: Items(title: 'ساخت',value: '1402',),
              ),

            ],
          ),
        ),
        const SizedBox(height: 32,),
         Row(
          children: [
            Image.asset('assets/images/icons/map.png'),
            const SizedBox(
              width: 8,
            ),
            Text(
              'موقعیت مکانی',
              style: AvisTextStyle.setStyle(
                  textColor: const Color(0xff101828), fontSize: 18),
            ),
          ],
        ),
        const SizedBox(height: 24,),
         Container(
                  width: MediaQuery.of(context).size.width,
                  height: 144,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/main/maps.png'),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Container(
                      width: 185,
                      height: 45,
                      decoration: BoxDecoration(
                          color: AvisColors.Red(400),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 130,
                                  child: Text(
                                    'گرگان , خیابان صیاد شیرازی',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: AvisTextStyle.setStyle(
                                        textColor: AvisColors.greyBase,
                                        fontSize: 16),
                                  )),
                              const SizedBox(
                                width: 12,
                              ),
                              Image.asset('assets/images/icons/location.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            const SizedBox(height: 120,),
      ],
    );
  }
}

class Items extends StatelessWidget {
   Items({
    super.key,
    required this.title,
    required this.value,
  });
  String title;
  String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title,style: AvisTextStyle.setStyle(textColor: AvisColors.Grey(300), fontSize: 17),),
        const SizedBox(height: 10,),
        Text(value,style: AvisTextStyle.setStyle(textColor: Colors.black, fontSize: 16),),
      ],
    );
  }
}