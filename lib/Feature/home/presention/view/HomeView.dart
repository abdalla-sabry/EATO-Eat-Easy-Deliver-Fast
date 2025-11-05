import 'package:eato/core/utiles/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'HomeVeiwContant/Catigores/Catiorysection.dart';
import 'HomeVeiwContant/Catigores/catigoresContainer/CatigoryContainer.dart';
import 'HomeVeiwContant/Recommended/ItemsContainersRecommended.dart';
import 'HomeVeiwContant/Recommended/RecommendedSection.dart';
import 'HomeVeiwContant/SearchBarAndCatigory/SearchBarAndCarigory.dart';
import 'HomeVeiwContant/TopBarSection/AvaterWithAppName.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});
  static const String routeName='Homeview';
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: ListView(
        children: [
          SizedBox(
            height: 5.h,
          ),
          TopBarSection(),
          Searchbarsection(),
          SizedBox(
            height: 25/891*100.h,
          ),
          CatiorySection(),
          RecommendedSection(),
          SizedBox(
            height: 100/891*100.h,
          ),

        ],
      )
    );
  }
}
