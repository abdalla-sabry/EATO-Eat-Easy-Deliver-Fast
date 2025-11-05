import 'package:eato/Feature/home/presention/view/HomeVeiwContant/Catigores/catigoresContainer/CircularbuttonInCatigoryContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'MainContainerInCatigoryContainer.dart';

class CatigoryContainer extends StatelessWidget {
   CatigoryContainer({super.key,required this.urlPath,required this.catigoryName,required this.isSelact});
String urlPath;
String catigoryName;
bool isSelact;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 84 / 414 * 100.w,
        height: 176 / 896 * 100.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            // Main container (90 × 137)
            MainContainerInCatigoryContainer(
              isSelact: isSelact,
              urlPath: urlPath,
              catigoryName:catigoryName,
            ),
            CircularbuttonInCatigoryContainer(
              isSelact: isSelact,
            )
            // Circular button (radius ≈ 30)
          ],
        ),
      ),
    );
  }
}
