import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/utiles/fontStyle.dart';

class SmallContanierRecommeded extends StatelessWidget {
   SmallContanierRecommeded({super.key, required this.producteName, required this.producteDescraption, required this.productePrice});
final  String producteName;
final  String producteDescraption;
final  String productePrice;
  @override
  Widget build(BuildContext context) {
    return  Positioned(
      bottom: 0,
      child: Container(
        width: 170 / 414 * 100.w,
        height: 148 / 896 * 100.h,
        decoration: BoxDecoration(
          color: Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding:  EdgeInsets.only(left: 3.w),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.h,
              ),
            Text(producteName,style:styleText.RecommendedFoodTitleTextStyle,),
              SizedBox(
                height: .5.h,
              ),
              Text(producteDescraption,style:styleText.RecommendedDescrabeTextStyle,),
              SizedBox(
                height: .5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(productePrice,style:styleText.RecommendedPricesTextStyle,),
                  Padding(
                    padding: EdgeInsets.only(right: 3.w),
                    child: Container(
                      height:20/414*100.h ,
                      width: 20/414*100.w,
                      child: Image.asset('assets/images/catigouresHomeScrean/Plus.png'),
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
