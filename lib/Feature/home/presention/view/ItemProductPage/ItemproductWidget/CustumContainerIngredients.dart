import 'package:eato/core/utiles/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustumContainerIngredients extends StatelessWidget {
  final String imageUrl;
  final String name;
  final Color backgroundColor;

   CustumContainerIngredients({
    required this.imageUrl,
    required this.name,
    required this.backgroundColor,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76/414*100.w,
      height: 91/891*100.h,// Fixed width for each chip
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10/891*100.h), // Space between image and text

          Image.asset(
            imageUrl,
            width: 66/414*100.w, // Image size
            height: 46/891*100.h, // Image size
            fit: BoxFit.contain, // Ensure image fits without cropping
          ),
           SizedBox(height: 8/891*100.h), // Space between image and text
          // Ingredient Name
          Text(
            name,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
