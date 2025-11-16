import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../HomeView/HomeVeiwContant/Recommended/ItemsContainersRecommended.dart';

class Favouriteveiw extends StatelessWidget {
  final List<String> images = [
    'assets/images/catigouresHomeScrean/muddumSandwantsh.png',
    'assets/images/catigouresHomeScrean/middumburger.png',

  ];
  final List<String> foodName = [
    'Sandwantsh',
    'burger',

  ];
  final List<String> prices = [
    '\$ 19.50',
    '\$ 15.50',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFFFF),
      body: Column(
        children: [
          SizedBox(height: 4.h,),
          Padding(
            padding: EdgeInsets.only(left: 31 / 414 * 100.w),
            child: SizedBox(
              height: 228/891*100.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                separatorBuilder: (context, index) =>
                    SizedBox(width: 15 / 414 * 100.w),
                itemBuilder: (context, index) {
                  return Center(
                    child: ItemsContainers(
                      nameFood: foodName[index],
                      prise: prices[index],
                      imageUrl: images[index],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
