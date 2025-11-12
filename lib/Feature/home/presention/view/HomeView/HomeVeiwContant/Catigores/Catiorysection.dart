import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'catigoresContainer/CatigoryItemsSection.dart';

class CatiorySection extends StatelessWidget {
  const CatiorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
        padding:  EdgeInsets.only(left: 30/414*100.w),
        child: Text(
        'Categories',
        style: TextStyle(
          fontSize: 20.sp, // looks ~22px on iPhone 11 Pro Max
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
      ),
        SizedBox(
          height: 3.h,
        ),

        CatigoryItemsSection()
      ],
    );
  }
}
