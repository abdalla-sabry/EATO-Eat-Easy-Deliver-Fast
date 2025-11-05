import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CircularbuttonInCatigoryContainer extends StatelessWidget {
  CircularbuttonInCatigoryContainer({super.key, required this.isSelact});
  bool isSelact;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: 30 / 414 * 100.w,
        height: 30 / 414 * 100.w,
        decoration: BoxDecoration(
          color: isSelact ? Color(0xffF9BA04) : Color(0xff2D3447),
          shape: BoxShape.circle,
        ),
        child: isSelact
            ? Image.asset('assets/images/catigouresHomeScrean/Frame.png')
            : Image.asset('assets/images/catigouresHomeScrean/Frame (1).png'),
      ),
    );
  }
}
