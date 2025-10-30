import 'package:eato/core/utiles/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import 'package:sizer/sizer.dart';


class BottomNavigationBarCustomize extends StatefulWidget {
  const BottomNavigationBarCustomize({super.key});

  @override
  State<BottomNavigationBarCustomize> createState() =>
      _BottomNavigationBarCustomizeState();
}

class _BottomNavigationBarCustomizeState
    extends State<BottomNavigationBarCustomize>  with TickerProviderStateMixin {
  @override
  // TabController _tabController;
  MotionTabBarController? _motionTabBarController;

  final List<String> labels = [
    'Home',
    'Favorites',
    'Location',
    'Cart',
    'Profile',
  ];



  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();

    _motionTabBarController!.dispose();
  }

  Widget build(BuildContext context) {
    return MotionTabBar(
    controller: _motionTabBarController, // ADD THIS if you need to change your tab programmatically
    initialSelectedTab: labels[0],
    labels: labels,
    icons:         [
      Icons.home_filled,
      Icons.favorite,
      Icons.location_on_rounded,
      Icons.shopping_cart,
      Icons.person
      ],

      // optional badges, length must be same with labels
    tabSize: 5.7.h,
    tabBarHeight: 6.5.h  ,
    textStyle:styleText.labelSelectedNameTextStyle  ,
    tabIconColor: Colors.grey,

    tabIconSize: 21.6.sp,
    tabIconSelectedSize: 22.sp,
    tabSelectedColor: Color(0xff11AB69),
    tabIconSelectedColor: Colors.white,
    tabBarColor: Colors.white,
    onTabItemSelected: (int value) {
    setState(() {
    // _tabController!.index = value;
    _motionTabBarController!.index = value;
    });
    },
    );
  }
}
