import 'package:eato/core/utiles/avater.dart';
import 'package:eato/core/utiles/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AvaterWithAppName extends StatelessWidget {
  const AvaterWithAppName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Avater(),
              Container(
                  height: 24 / 891 * 100.h,
                  width: 24 / 414 * 100.w,
                  child: Image.asset('assets/images/Category.png'))
            ],
          ),
        ),
        SizedBox(
          height: 2.5.h,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Food',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Delivery!',
                style: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
