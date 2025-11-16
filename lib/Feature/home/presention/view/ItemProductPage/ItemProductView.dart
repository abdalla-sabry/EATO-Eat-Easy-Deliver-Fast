import 'package:eato/Feature/home/presention/view/ItemProductPage/ItemproductWidget/ImageContainer.dart';
import 'package:eato/Feature/home/presention/view/ItemProductPage/ItemproductWidget/TopBarSectionInITemProduct.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'ItemproductWidget/BottomSection.dart';
import 'ItemproductWidget/CounterContainer.dart';
import 'ItemproductWidget/FootDetiles.dart';
import 'ItemproductWidget/IngredientsSection.dart';

class ItemProductView extends StatelessWidget {
  ItemProductView(
      {super.key,
      required this.imageUrl,
      required this.foodName,
      required this.prisce});
  static const String routeName = 'ItemProduct';
  String imageUrl;
  String foodName;
  String prisce;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 25 / 891 * 100.h,
          ),
          TopBarSectionInItemProduct(),
          SizedBox(
            height: 15 / 891 * 100.h,
          ),
          ImageContainer(
              imageUrl: imageUrl, foodName: foodName, price: prisce),

          SizedBox(
            height: 15/ 891 * 100.h,
          ),
          CounterContainer(),
          SizedBox(
            height: 15/ 891 * 100.h,
          ),
          FoodItemCard(foodName: foodName,prise: prisce,),
          SizedBox(
            height: 25/ 891 * 100.h,
          ),
          IntegredientsSection(),
          SizedBox(
            height: 12/ 891 * 100.h,
          ),
          AddToCardButton()
        ],
      ),
    );
  }
}
