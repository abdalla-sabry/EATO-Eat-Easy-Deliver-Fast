import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../../core/utiles/fontStyle.dart';


class SmallContanierRecommeded extends StatefulWidget {
   SmallContanierRecommeded({super.key, required this.producteName, required this.producteDescraption, required this.productePrice});
final  String producteName;
final  String producteDescraption;
final  String productePrice;

  @override
  State<SmallContanierRecommeded> createState() => _SmallContanierRecommededState();
}

class _SmallContanierRecommededState extends State<SmallContanierRecommeded> {
   bool isClicked = false;
delayFunation() async {
  await Future.delayed(const Duration(seconds: 250));
  isClicked = false;
}
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
            Text(widget.producteName,style:styleText.RecommendedFoodTitleTextStyle,),
              SizedBox(
                height: .5.h,
              ),
              Text(widget.producteDescraption,style:styleText.RecommendedDescrabeTextStyle,),
              SizedBox(
                height: .5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.productePrice,style:styleText.RecommendedPricesTextStyle,),
                  GestureDetector(

                      onTapDown: (_) => setState(() => isClicked = true),
                      onTapUp: (_) async {
                        await Future.delayed(const Duration(milliseconds: 150));
                        setState(() => isClicked = false);
                      },
                      onTapCancel: () => setState(() => isClicked = false),

                    child: Padding(
                      padding: EdgeInsets.only(right: 3.w),
                      child: Container(
                        height:20/414*100.h ,
                        width: 20/414*100.w,
                        child:isClicked?Image.asset('assets/images/catigouresHomeScrean/Plus1.png'): Image.asset('assets/images/catigouresHomeScrean/Plus.png'),
                      ),
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
