import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeVeiwContant/Recommended/ItemsContainersRecommended.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(child: ItemsContainers(imageUrl: 'assets/images/catigouresHomeScrean/middumburger.png',)),
    );
  }
}
