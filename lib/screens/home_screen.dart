import 'package:divar/components/bigProduct.dart';
import 'package:divar/components/littleProduct.dart';
import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
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
              SliverToBoxAdapter(
                child: breakSection(text: 'آویز های داغ'),
              ),
             const  SliverToBoxAdapter(
                child: SizedBox(height: 24),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 290,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return Container(
                        margin: index == 0 ? const EdgeInsets.only() : const EdgeInsets.only(right: 16) ,
                        child:  GestureDetector(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context){
                              return const AddvertiseScreen();
                            }));
                          },
                          child: BigProduct( //  
                            title: 'ویلای 500 متری زیر قیمت',
                            description: 'ویو عالی، سند تک برگ، سال ساخت ۱۴۰۲، تحویل فوری',
                            image: 'assets/images/ad-image/5.png',
                            price: '300,000,000,000',
                          ),
                        )
                        );
                    },
                  ),  
                ),
              ),
              const  SliverToBoxAdapter(
                child: SizedBox(height: 32),
              ),
                 SliverToBoxAdapter(
                child: breakSection(text: 'آویز های اخیر'),
              ),
             const  SliverToBoxAdapter(
                child: SizedBox(height: 24),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return Container(
                        margin: const EdgeInsets.only(top: 16) ,
                        child:  LittleProduct (
                          title: 'ویلای 500 متری زیر قیمت',
                          description: 'ویو عالی، سند تک برگ، سال ساخت ۱۴۰۲، تحویل فوری',
                          image: 'assets/images/ad-image/5.png',
                          price: '300,000,000,000',
                        )
                        );
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
