import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../ItemProductView.dart';

class ImageContainer extends StatelessWidget {
  final String imageUrl;
  final String foodName;
  final String price;

  const ImageContainer({
    super.key,
    required this.imageUrl,
    required this.foodName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Center(

        child: Stack(
          alignment: Alignment.center,
          children: [
            // Bottom container (details)
            Center(
              child: Container(
                width:340 / 414 * 100.w,
                height: 340 / 896 * 100.h,
                decoration:  BoxDecoration(
                  color: Colors.green[50],
                  shape: BoxShape.circle, // 👈 makes it perfectly circular
                ),
              ),
            ),

            // Top image
            Padding(
              padding:  EdgeInsets.only(left: 3.5.w),
              child: GestureDetector(
                onTap: () {
                },
                child: Hero(
                  tag: foodName,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                      width:280/ 414 * 100.w,
                      height: 270 / 896 * 100.h,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
