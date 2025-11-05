import 'package:eato/core/utiles/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'HomeVeiwContant/Catigores/catigoresContainer/CatigoryContainer.dart';
import 'HomeVeiwContant/Recommended/ItemsContainersRecommended.dart';
import 'HomeVeiwContant/SearchBarAndCatigory/SearchBarAndCarigory.dart';
import 'HomeVeiwContant/TopBarSection/AvaterWithAppName.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          TopBarSection(),
          Searchbarsection(),
          Center(child: ItemsContainers(imageUrl: 'assets/images/catigouresHomeScrean/middumburger.png',)),
          Center(child: CatigoryContainer())
        ],
      ),
    );
  }
}
