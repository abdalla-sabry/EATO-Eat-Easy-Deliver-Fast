import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'ItemsContainersRecommended.dart';

class RecommendedSection extends StatelessWidget {
  RecommendedSection({super.key});
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 13 / 891 * 100.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 31 / 414 * 100.w),
          child: Text('Recommended',
              style: TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              )),
        ),
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
        ),
      ],
    );
  }
}
