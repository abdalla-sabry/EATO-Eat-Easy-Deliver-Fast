import 'package:eato/Feature/home/presention/view/HomeVeiwContant/Recommended/smallContanierRecommeded.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ItemsContainers extends StatelessWidget {
  ItemsContainers({super.key, required this.imageUrl});
  String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170 / 414 * 100.w,
        height: 228 / 896 * 100.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Top container
            Positioned(
              top: 0,
              child: Container(
                width: 159 / 414 * 100.w,
                height: 128 / 896 * 100.h,
                decoration: BoxDecoration(),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Bottom container
            SmallContanierRecommeded(
              producteName: 'Hamburger',
              producteDescraption: 'Starting Form',
              productePrice: '\$ 19.5',
            ),

          ],
        ),
      ),
    );
  }
}
