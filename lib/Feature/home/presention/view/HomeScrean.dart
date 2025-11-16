import 'package:eato/Feature/home/presention/view/SettingView/settingView.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'CartVeiw/CartVeiw.dart';
import 'HomeView/HomeView.dart';
import 'HomeView/bottomNavigationBar/bottomNavigationBarCustomize.dart';
import 'deliveryView/DelivryPageWthOutDeliveyProcessing.dart';
import 'deliveryView/deliveryPaga.dart';
import 'FavouriteView/favouriteVeiw.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  final PageController _pageController = PageController(initialPage: 0);

  final List<Widget> _pages = [
    Homeview(),
    Favouriteveiw(),
    DelivryPageWthOutDeliveyProcessing(),


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
      backgroundColor: Color(0xffF3F3F3),
      body: Stack(
        children: [
          PageView(
            physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
            controller: _pageController,
            children: _pages,
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: BottomNavigationBarCustomize(
                pageController: _pageController,
              )),
        ],
      ),
    );
  }
}
