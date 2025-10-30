import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final BoxFit fit;
  final BorderRadiusGeometry borderRadius;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final Color backgroundColor;
  bool isSelected;
   CustomImageContainer({
    Key? key,
    required this.imagePath,
   required this.isSelected,
    this.width = 100, // Default width
    this.height = 100, // Default height
    this.fit = BoxFit.cover, // Default fit
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)), // Default slightly rounded corners
    this.border,
    this.boxShadow,
    this.backgroundColor = Colors.transparent, // Default transparent background
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color:isSelected? backgroundColor:Colors.transparent,
        borderRadius: borderRadius,
        border: border,
        boxShadow: boxShadow,
        // The image itself goes into the decoration's image property
        image: DecorationImage(
          image: AssetImage(imagePath), // Use AssetImage for local assets
          fit: fit,
        ),
      ),
    );
  }
}