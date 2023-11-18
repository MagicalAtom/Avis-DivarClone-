library easy_animated_tabbar;
import 'package:easy_animated_tabbar/easy_button_widget.dart';
import 'package:flutter/material.dart';

class EasyAnimatedTabBar extends StatefulWidget {
  final List<String>? buttonTitles;
  final void Function(int)? onSelected;
  final int selectedIndex;
  final int animationDuration;
  final double minWidthOfItem;
  final double minHeightOfItem;
  final Color deActiveItemColor;
  final Color activeItemColor;
  final TextStyle activeTextStyle;
  final TextStyle deActiveTextStyle;
  final double activeBorderRadius;
  final double deActiveBorderRadius;
  EasyAnimatedTabBar(
      {required this.buttonTitles,
      required this.onSelected,
      this.selectedIndex = 0,
      this.animationDuration = 300,
      this.minWidthOfItem = 80,
      this.minHeightOfItem = 40,
      this.deActiveItemColor = const Color(0xffF2F4F6),
      this.activeItemColor = Colors.blueAccent,
      this.activeTextStyle = const TextStyle(
        fontSize: 14,
      ),
      this.deActiveTextStyle = const TextStyle(
        fontSize: 14,
      ),
      this.activeBorderRadius = 16,
      this.deActiveBorderRadius = 8});

  @override
  _EasyAnimatedTabBarState createState() => _EasyAnimatedTabBarState();
}

class _EasyAnimatedTabBarState extends State<EasyAnimatedTabBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    _selectedIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.buttonTitles!.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: index == widget.buttonTitles!.length ? EdgeInsets.only(left: 16) : EdgeInsets.only(left: 16) ,
                  child: EasyButtonWidget(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                      widget.onSelected!(index);
                    },
                    on: index == _selectedIndex,
                    text: widget.buttonTitles![index],
                    minHeightOfItem: widget.minWidthOfItem,
                    deActiveBorderRadius: widget.deActiveBorderRadius,
                    minWidthOfItem: widget.minWidthOfItem,
                    animationDuration: widget.animationDuration,
                    activeItemColor: widget.activeItemColor,
                    deActiveItemColor: widget.deActiveItemColor,
                    activeBorderRadius: widget.activeBorderRadius,
                    activeTextStyle: widget.activeTextStyle,
                    deActiveTextStyle: widget.deActiveTextStyle,
                  ),
                );
              }),
    );
  }
}
