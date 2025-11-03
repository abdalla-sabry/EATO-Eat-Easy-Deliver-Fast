import 'package:eato/Feature/home/presention/view/settingView.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'HomeView.dart';
import 'deliveryPaga.dart';
import 'favouriteVeiw.dart';
import 'bottomNavigationBar/bottomNavigationBarCustomize.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  final PageController _pageController = PageController(initialPage: 0);

  final List<Widget> _pages = [
    Homeview(),
    DeliveryPaga(),
    Favouriteveiw(),
    SettingView(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: _pages,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomNavigationBarCustomize(
              pageController: _pageController,
            ),
          ),
        ],
      ),
    );
  }
}
