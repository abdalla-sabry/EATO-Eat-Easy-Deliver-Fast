import 'package:eato/core/utiles/fontStyle.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'CustumContainerIngredients.dart';



class IntegredientsSection extends StatelessWidget {
  const IntegredientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          "Ingredients",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
         SizedBox(height: 30/891*100.h), // Space below the title

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustumContainerIngredients(
                imageUrl: 'assets/images/catigouresHomeScrean/beff.png',
                name: 'Beef',
                backgroundColor: Colors.amber[50]!, // Light yellow
              ),
              SizedBox(width: 14/414*100.w), // Space below the title

              CustumContainerIngredients(
                imageUrl: 'assets/images/catigouresHomeScrean/tomto.png',
                name: 'Tomato',
                backgroundColor: Colors.deepPurple[50]!, // Light purple
              ),
              SizedBox(width: 14/414*100.w), // Space below the title

              CustumContainerIngredients(
                imageUrl: 'assets/images/catigouresHomeScrean/phalpallpng.png',
                name: 'Pepper',
                backgroundColor: Colors.green[50]!, // Light green
              ),
              SizedBox(width: 14/414*100.w), // Space below the title

              CustumContainerIngredients(
                imageUrl: 'assets/images/catigouresHomeScrean/onine.png',
                name: 'Onion',
                backgroundColor: Colors.red[50]!, // Light pink
              ),
              // You can add more ingredients here
            ],
          ),
        ),
      ],
    );
  }
}