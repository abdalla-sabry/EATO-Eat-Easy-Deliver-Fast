import 'package:eato/core/utiles/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TopBarSectionInItemProduct extends StatefulWidget {
   TopBarSectionInItemProduct({super.key});

  @override
  State<TopBarSectionInItemProduct> createState() => _TopBarSectionInItemProductState();
}

class _TopBarSectionInItemProductState extends State<TopBarSectionInItemProduct> {
bool isFavorite =false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30/414*100.w),
          child: Container(
            height: 24/891*100.h,
            width: 24/414*100.w,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('assets/images/backImage.png'),
            ),
          ),
        ) ,Padding(
          padding: EdgeInsets.only(right: 30/414*100.w),
          child: Container(
            color:Colors.transparent,
            height: 24/891*100.h,
            width: 24/414*100.w,
            child: GestureDetector( onTap: () {
         setState(() {
           isFavorite= !isFavorite;

         });
            },
              child:isFavorite? Image.asset('assets/images/heart.png'): Icon(Icons.favorite,color: Colors.redAccent,),
            ),
          ),
        )
      ],
    );
  }
}
