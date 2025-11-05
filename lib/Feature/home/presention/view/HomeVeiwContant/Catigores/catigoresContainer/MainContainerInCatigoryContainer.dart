import 'package:eato/core/utiles/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'dart:ui' as ui;

class MainContainerInCatigoryContainer extends StatelessWidget {
  MainContainerInCatigoryContainer({super.key, required this.isSelact,required this.urlPath,required this.catigoryName});
  bool isSelact = true;
  String urlPath;
  String catigoryName;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        left: 0,
        child: CustomPaint(
          size: Size(90 / 414 * 100.h, 137 / 896 * 100.w),
          painter: BottomCurveClipper(isSelact: isSelact),
          child: ContaintOfMainContainerInCatigoryContainer(
            isSelact: isSelact,
            catigoryName: catigoryName,
            urlPath: urlPath,
          ),
        ));
  }
}

class ContaintOfMainContainerInCatigoryContainer extends StatelessWidget {
  ContaintOfMainContainerInCatigoryContainer(
      {super.key, required this.isSelact,required this.catigoryName,required this.urlPath});
  bool isSelact;
  String urlPath;
  String catigoryName;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 25 / 896 * 100.h),
        Padding(
          padding: EdgeInsets.only(left: 3.3.w),
          child: Image.asset(
                urlPath,
            height: 55 / 896 * 100.h, // example image height from Figma
          ),
        ),
        SizedBox(height: 12 / 896 * 100.h),
        Padding(
          padding: EdgeInsets.only(left: 2.5.w),
          child: Text(
            catigoryName,
            style: isSelact
                ? styleText.catigoryProductNameTextStyle
                : styleText.catigoryProductNameTextStyle
                    .copyWith(color: Color(0xff2D3447)),
          ),
        ),
      ],
    );
  }
}

class BottomCurveClipper extends CustomPainter {
  BottomCurveClipper({required this.isSelact})
  ;bool isSelact;
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(18, 0.5);
    path_0.lineTo(72, 0.5);
    path_0.cubicTo(81.665, 0.5, 89.5, 8.33502, 89.5, 18);
    path_0.lineTo(89.5, 122);
    path_0.cubicTo(89.5, 130.008, 83.0081, 136.5, 75, 136.5);
    path_0.cubicTo(71.0225, 136.5, 67.3991, 134.545, 63.8525, 131.965);
    path_0.cubicTo(62.0818, 130.676, 60.3531, 129.25, 58.6143, 127.851);
    path_0.cubicTo(56.882, 126.457, 55.1428, 125.092, 53.377, 123.956);
    path_0.cubicTo(50.9612, 122.402, 48.0849, 121.5, 45, 121.5);
    path_0.cubicTo(41.9151, 121.5, 39.0388, 122.402, 36.623, 123.956);
    path_0.cubicTo(34.8572, 125.092, 33.118, 126.457, 31.3857, 127.851);
    path_0.cubicTo(29.6469, 129.25, 27.9182, 130.676, 26.1475, 131.965);
    path_0.cubicTo(22.6009, 134.545, 18.9775, 136.5, 15, 136.5);
    path_0.cubicTo(6.99187, 136.5, 0.5, 130.008, 0.5, 122);
    path_0.lineTo(0.5, 18);
    path_0.cubicTo(0.500001, 8.33502, 8.33502, 0.5, 18, 0.5);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_0_stroke.color = Colors.black.withOpacity(.01);
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = isSelact?Color(0xff11AB69):Color(0xffF3F3F3);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
