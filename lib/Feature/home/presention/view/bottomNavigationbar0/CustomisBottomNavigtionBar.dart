import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(292,60.3301);
path_0.cubicTo(283.716,60.3301,277.119,52.8582,271.557,46.7185);
path_0.cubicTo(266.754,41.4164,259.212,38,250.731,38);
path_0.cubicTo(242.25,38,234.708,41.4164,229.905,46.7185);
path_0.cubicTo(224.343,52.8582,217.746,60.3301,209.462,60.3301);
path_0.lineTo(45,60.3301);
path_0.cubicTo(36.7157,60.3301,30,67.0458,30,75.3301);
path_0.lineTo(30,115);
path_0.cubicTo(30,123.284,36.7157,130,45,130);
path_0.lineTo(429,130);
path_0.cubicTo(437.284,130,444,123.284,444,115);
path_0.lineTo(444,75.3301);
path_0.cubicTo(444,67.0458,437.284,60.3301,429,60.3301);
path_0.lineTo(292,60.3301);
path_0.close();

// Fill color
Paint paintFill = Paint()..style = PaintingStyle.fill;
paintFill.color = Color(0xffFFFFFF);
canvas.drawPath(path_0, paintFill);

// Dark frame with opacity
Paint paintStroke = Paint()
  ..style = PaintingStyle.stroke
  ..strokeWidth = .5
  ..color = Colors.black.withOpacity(0.1);
canvas.drawPath(path_0, paintStroke);
}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}