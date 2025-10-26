import 'dart:ffi';

import 'package:e2_fastorder/Feature/home/presention/view/HomeView.dart';
import 'package:e2_fastorder/Feature/home/presention/view/favouriteVeiw.dart';
import 'package:e2_fastorder/Feature/home/presention/view/settingView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'deliveryPaga.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  int currentPageIndex = 0;
  String? email;

  PageController controller = PageController(initialPage: 0);
  getIndexPage(int index) {
    setState(() {
      currentPageIndex = index;
    });
    controller.jumpToPage(currentPageIndex);
  }
  Void? onChange(int index) {
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
            children: [ Homeview(),DeliveryPaga(),Favouriteveiw(), SettingView()],
          ),
          Positioned(
            child: Bottomnavigationbar(
              indexPageBackFuncation: getIndexPage,
              pageIndex: currentPageIndex,
            ),
            left: 4.w,
            right: 4.w,
            bottom: 1.h,
          )
        ],
      ),
    );
    }}