import 'package:animate_do/animate_do.dart';
import 'package:divar/screens/addvertise_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/horizontal_card_advertise_home.dart';
import '../../data/product.dart';


Widget HorizontalList(BuildContext context){
  return
    SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height + 100,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: productsHomePage.length,
          itemBuilder: (context, index) {
            return FadeInRight(
              child: Container(
                  margin: const EdgeInsets.only(top: 16),
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
                    child: FadeInLeft(
                      delay: const Duration(milliseconds: 200),
                      child: Card(
                        child: HorizontalCard(
                          title: productsHomePage[index].title,
                          description:
                          productsHomePage[index].description,
                          image: productsHomePage[index].image,
                          price: productsHomePage[index].price,
                        ),
                      ),
                    ),
                  )),
            );
          },
        ),
      ),
    );
}