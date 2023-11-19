import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/material.dart';

class LittleProduct extends StatelessWidget {
  LittleProduct(
      {super.key,
      required this.title,
      required this.description,
      required this.image,
      required this.price});

  String image;
  String title;
  String description;
  String price;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width - 30,
        height: 130,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: const Color(0xff000000).withOpacity(.02),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 4)),
              BoxShadow(
                  color: const Color(0xff000000).withOpacity(.02),
                  spreadRadius: 0,
                  blurRadius: 18,
                  offset: const Offset(0, 18)),
              BoxShadow(
                  color: const Color(0xff000000).withOpacity(.01),
                  spreadRadius: 0,
                  blurRadius: 24,
                  offset: const Offset(0, 40)),
              BoxShadow(
                  spreadRadius: 0,
                  color: const Color(0xff000000).withOpacity(.00),
                  blurRadius: 28,
                  offset: const Offset(0, 70)),
            ]),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 180,
                      child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        style: AvisTextStyle.setStyle(
                            textColor: Colors.black, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 170,
                      child: Text(
                        description,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AvisTextStyle.setStyle(
                            textColor: AvisColors.Grey(400), fontSize: 14),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                
                      Text(
                        'قیمت',
                        style: AvisTextStyle.setStyle(
                          fontSize: 14,
                          textColor: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 50,),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: AvisColors.Grey(100).withOpacity(.5)),
                        child: Center(
                          child: Text(
                            price,
                            style: AvisTextStyle.setStyle(
                              fontSize: 15,
                              textColor: AvisColors.Red(400),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Spacer(),
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  image,
                  width: 121,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ));
  }
}
