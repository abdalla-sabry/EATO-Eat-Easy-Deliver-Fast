import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'AuthUserProfileDetiles.dart';
import 'ListbuttomSetting.dart';



class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFFFF),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 5.5.w,vertical: 4.5.h),
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            AuthUserProfileDetiles(),
            SizedBox(
              height: 6.h,
            ),
            Listbuttomsettings()
        ],
        ),
      ),
    );
  }
}