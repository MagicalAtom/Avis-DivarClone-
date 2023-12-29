import 'package:divar/components/vertical_card_addvertise_home.dart';
import 'package:divar/data/product.dart';
import 'package:divar/screens/addvertise_screen.dart';
import 'package:flutter/material.dart';

Widget VerticalList(){
  return  SliverToBoxAdapter(
    child: SizedBox(
      height: 300,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: productsHomePage.length,
        itemBuilder: (context, index) {
          return Container(
              margin: index == 0
                  ? const EdgeInsets.only()
                  : const EdgeInsets.only(right: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return AddvertiseScreen(
                          title: productsHomePage[index].title,
                          image: productsHomePage[index].image,
                        );
                      }));
                },
                child: VerticalCard(
                  //
                  title: productsHomePage[index].title,
                  description:
                  productsHomePage[index].description,
                  image: productsHomePage[index].image,
                  price: productsHomePage[index].price,
                ),
              ));
        },
      ),
    ),
  );
}