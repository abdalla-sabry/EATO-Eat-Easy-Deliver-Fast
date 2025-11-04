import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

abstract class styleText {
  //i order ai to creata it
//Contanier Recommended

// Main title like "Hamburger,"
 static final TextStyle RecommendedFoodTitleTextStyle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    letterSpacing: -0.5,
  );

// Subheading like "prices"
  static  final TextStyle RecommendedPricesTextStyle =GoogleFonts.poppins(
    color: const Color(0xFF11AB69), // That specific green color
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,   // Semi-bold
  );

// Search bar hint like "descrabe"
      static  final TextStyle RecommendedDescrabeTextStyle = GoogleFonts.poppins(
    color: Colors.grey.shade600,   // A medium grey color
    fontSize: 13.5.sp,
    fontWeight: FontWeight.normal,  // Regular weight
  );
////
// Product name like "Razer Viper V3 Pro"
  static  final TextStyle labelSelectedNameTextStyle = GoogleFonts.roboto(
    fontSize: 12 .sp,
    color: Color(0xff11AB69),
    fontWeight: FontWeight.w500,
  );

// Product price like "$151.99"
  static  final TextStyle PriceTextStyle = GoogleFonts.plusJakartaSans(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

// Selected nav label like "Home"
  static  final TextStyle NavSelectedTextStyle = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Colors.redAccent,
  );

// Unselected nav label
  static  final TextStyle NavUnselectedTextStyle = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.grey[600],
  );

}
