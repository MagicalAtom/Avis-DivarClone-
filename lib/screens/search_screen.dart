import 'package:divar/config/colors.dart';
import 'package:divar/config/text-style.dart';
import 'package:divar/screens/UserProfileScreen/SearchBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';

class Category {
  String name;
  Category(this.name);
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Category> categories = [
    Category('خانه اجاره ای'),
    Category('خانه فروشی'),
    Category('زمین فروشی'),
    Category('سرایه داری')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AvisColors.greyBase,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    showSearch(
                      context: context,
                      delegate: SearchPage<Category>(
                        searchStyle:
                            AvisTextStyle.h6(textColor: AvisColors.Grey(300)),
                        items: categories,
                        searchLabel: 'جستجو',
                        suggestion: const Center(
                          child: const Text('جستجو بر اساس دسته بندی یا اسم محصول'),
                        ),
                        failure: const Center(
                          child: Text('دسته بندی یا آگهی مورد نظر یافت نشد'),
                        ),
                        filter: (category) => [
                          category.name, // search by this
                        ],
                        builder: (person) => ListTile(
                          // if find your search keyword
                          title: Text(person.name),
                        ),
                      ),
                    );
                  },
                  child: SearchBox()),
                  Spacer(),
                  Text('جستجو آگهی ها',style: AvisTextStyle.h3(textColor: AvisColors.Grey(300)),),
                  Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
