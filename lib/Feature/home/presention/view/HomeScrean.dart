import 'dart:ffi';


import 'package:eato/Feature/home/presention/view/settingView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'HomeView.dart';
import 'bottomNavigationBar/bottomNavigationBarCustomize.dart';
import 'deliveryPaga.dart';
import 'favouriteVeiw.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  int currentPageIndex = 0;

  PageController controller = PageController(initialPage: 0);
  getIndexPage(int index) {
    setState(() {
      currentPageIndex = index;
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.jumpToPage(currentPageIndex);
    });
  }

  void onChange(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: onChange,
            children: [
              Homeview(),
              DeliveryPaga(),
              Favouriteveiw(),
              SettingView()
            ],
          ),
          Positioned(
            child: BottomNavigationBarCustomize(),
            right: 0,
            left: 0,
            bottom: .05.h,
          )
        ],
      ),
    );
  }
}
