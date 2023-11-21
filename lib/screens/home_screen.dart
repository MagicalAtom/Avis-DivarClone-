import 'package:animate_do/animate_do.dart';
import 'package:divar/components/bigProduct.dart';
import 'package:divar/components/littleProduct.dart';
import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/data/product.dart';
import 'package:divar/screens/addvertise_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AvisColors.greyBase,
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Image.asset(
          'assets/images/main/logo.png',
          width: 90,
          fit: BoxFit.cover,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 26),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: CustomScrollView(
            slivers: [
              // hot avis ====================================
              SliverToBoxAdapter(
                child: breakSection(text: 'آویز های داغ'),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 24),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 290,
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
                            child: FadeInDown(
                              delay: const Duration(milliseconds: 200),
                              child: BigProduct(
                                //
                                title: productsHomePage[index].title,
                                description:
                                    productsHomePage[index].description,
                                image: productsHomePage[index].image,
                                price: productsHomePage[index].price,
                              ),
                            ),
                          ));
                    },
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 32),
              ),
              SliverToBoxAdapter(
                child: breakSection(text: 'آویز های اخیر'),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 24),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: productsHomePage.length,
                    itemBuilder: (context, index) {
                      return Container(
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
                              child: LittleProduct(
                                title: productsHomePage[index].title,
                                description:
                                    productsHomePage[index].description,
                                image: productsHomePage[index].image,
                                price: productsHomePage[index].price,
                              ),
                            ),
                          ));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget breakSection({required String text}) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AvisTextStyle.h6(textColor: Colors.black),
          ),
          Text(
            'مشاهده همه',
            style: AvisTextStyle.setStyle(
                textColor: AvisColors.Grey(200), fontSize: 16),
          ),
        ],
      ),
    );
  }
}
