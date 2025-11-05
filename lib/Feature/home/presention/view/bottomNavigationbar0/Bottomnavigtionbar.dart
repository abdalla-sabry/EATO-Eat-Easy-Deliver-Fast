import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:eato/core/utiles/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'CustomisBottomNavigtionBar.dart';
import 'customButtomBarItems.dart';

class BottomNavigtionBar extends StatefulWidget {
  BottomNavigtionBar({super.key});

  @override
  State<BottomNavigtionBar> createState() => _BottomNavigtionBarState();
}

class _BottomNavigtionBarState extends State<BottomNavigtionBar> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 92 / 892 * 100.h, // same height as painter
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: Size(100.w, 92 / 892 * 100.h),
            painter: RPSCustomPainter(),
          ),
          Align(
            alignment: Alignment.bottomCenter, // 👈 important: usually bottomCenter, not center
            child: Padding(
              padding: EdgeInsets.only(bottom: 8), // adjust this until it fits perfectly
              child: RowOfCustomBottomBarItem(
                selectedIndex: selectedIndex,
              ),
            ),
          ),
        ],
      ),
    );


  }
}

/////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////
class RowOfCustomBottomBarItem extends StatefulWidget {
  int selectedIndex;

  RowOfCustomBottomBarItem({super.key, required this.selectedIndex});

  @override
  State<RowOfCustomBottomBarItem> createState() =>
      _RowOfCustomBottomBarItemState();
}

class _RowOfCustomBottomBarItemState extends State<RowOfCustomBottomBarItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBottomBarItem(
          activeImage: 'assets/images/BottomNavigaton_BAr_homeScrean/Home.png',
          inactiveImage:
              'assets/images/BottomNavigaton_BAr_homeScrean/home.gray.png',
          label: 'Home',
          isActive: widget.selectedIndex == 0,
          onTap: () => setState(() => widget.selectedIndex = 0),
        ),

        // 2) Favorites
        CustomBottomBarItem(
          activeImage:
              'assets/images/BottomNavigaton_BAr_homeScrean/heartWhite.png',
          inactiveImage:
              'assets/images/BottomNavigaton_BAr_homeScrean/heart.png',
          label: 'Favorites',
          isActive: widget.selectedIndex == 1,
          onTap: () => setState(() => widget.selectedIndex = 1),
        ),

        // 3) Location
        CustomBottomBarItem(
          activeImage:
              'assets/images/BottomNavigaton_BAr_homeScrean/loactionWhite.png',
          inactiveImage:
              'assets/images/BottomNavigaton_BAr_homeScrean/Location.png',
          label: 'Location',
          isActive: widget.selectedIndex == 2,
          onTap: () => setState(() => widget.selectedIndex = 2),
        ),

        // 4) Cart
        CustomBottomBarItem(
          activeImage:
              'assets/images/BottomNavigaton_BAr_homeScrean/shopingGray.png',
          inactiveImage:
              'assets/images/BottomNavigaton_BAr_homeScrean/shop.png',
          label: 'Cart',
          isActive: widget.selectedIndex == 3,
          onTap: () => setState(() => widget.selectedIndex = 3),
        ),

        // 5) Profile
        CustomBottomBarItem(
          activeImage:
              'assets/images/BottomNavigaton_BAr_homeScrean/personwhite.png',
          inactiveImage:
              'assets/images/BottomNavigaton_BAr_homeScrean/person.png',
          label: 'Profile',
          isActive: widget.selectedIndex == 4,
          onTap: () => setState(() => widget.selectedIndex = 4),
        ),
      ],
    );
  }
}
