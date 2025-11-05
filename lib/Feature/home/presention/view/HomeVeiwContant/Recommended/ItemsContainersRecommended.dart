import 'package:eato/Feature/home/presention/view/HomeVeiwContant/Recommended/smallContanierRecommeded.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../ItemProductPage/ItemProductView.dart';

class ItemsContainers extends StatelessWidget {
  ItemsContainers({super.key, required this.imageUrl,required this.nameFood,required this.prisce});
  String imageUrl;
  String prisce;
  String nameFood;

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

            // Bottom container
            SmallContanierRecommeded(
              producteName: nameFood,
              producteDescraption: 'Starting Form',
              productePrice: prisce,
            ),
            Positioned(
              top: 0,
              child: Container(
                width: 159 / 414 * 100.w,
                height: 128 / 896 * 100.h,
                decoration: BoxDecoration(),
                child: GestureDetector(
                  onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemProductView(imageUrl: imageUrl,productName: nameFood),
                        ),
                      );
                    },


                  child: Hero(
                    tag:nameFood,
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
