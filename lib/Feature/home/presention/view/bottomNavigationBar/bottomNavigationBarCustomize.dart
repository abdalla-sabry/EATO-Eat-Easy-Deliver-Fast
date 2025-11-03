import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'constant_Bottom_Navication_Bar.dart';

class BottomNavigationBarCustomize extends StatefulWidget {
  final PageController pageController; // receive page controller from parent
  const BottomNavigationBarCustomize({Key? key, required this.pageController}) : super(key: key);

  @override
  State<BottomNavigationBarCustomize> createState() =>
      _BottomNavigationBarCustomizeState();
}

class _BottomNavigationBarCustomizeState
    extends State<BottomNavigationBarCustomize> {
  final NotchBottomBarController _notchController =
  NotchBottomBarController(index: 0);

  void _onTap(int index) {
    _notchController.index = index;
    widget.pageController.jumpToPage(index);
    setState(() {});
  }

  @override
  void dispose() {
    _notchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  AnimatedNotchBottomBar(
      notchBottomBarController: _notchController,
      color: Colors.white,
      showLabel: true,
      notchColor: Color(0xff11AB69),
      bottomBarHeight: 8.h,          // total BottomBar height
      durationInMilliSeconds: 300,
      bottomBarItems: kBottomBarItemsBar,
      onTap: _onTap,
      kIconSize: 20,                  // <-- make this match your active image height
      kBottomRadius: 15,
    )
    ;
  }
}
