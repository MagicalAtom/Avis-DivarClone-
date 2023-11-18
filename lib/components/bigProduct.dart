import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:flutter/material.dart';

class BigProduct extends StatelessWidget {
  BigProduct(
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
      padding: const EdgeInsets.all(14),
      width: 240,
      height: 290,
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
                offset: const  Offset(0, 18)),
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
      child: Column(
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                image,
                height: 140,
                width: 230,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: AvisTextStyle.setStyle(
                    textColor: Colors.black, fontSize: 16),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'قیمت',
                style: AvisTextStyle.setStyle(
                  fontSize: 14,
                  textColor: Colors.black,
                ),
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  color: AvisColors.Grey(100).withOpacity(.5)
                ),
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
          )
        ],
      ),
    );
  }
}
