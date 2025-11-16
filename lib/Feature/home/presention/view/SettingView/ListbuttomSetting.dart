
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import 'ButtomforAuthSetting.dart';


class Listbuttomsettings extends StatelessWidget {
  Listbuttomsettings({super.key});
  List<ButtomforAuthSetting>buttomForAuthSettingList=[
    ButtomforAuthSetting(buttomName: 'Profile',onTapFunction: (context){},),
    ButtomforAuthSetting(buttomName: 'orders',onTapFunction: (context){},),
    ButtomforAuthSetting(buttomName: 'Deliver Info',onTapFunction: (context){},),
    ButtomforAuthSetting(buttomName: 'Setting',onTapFunction: (context){}, isVisable: false,),
    ButtomforAuthSetting(buttomName: 'Notifacations',onTapFunction: (context){},),
    ButtomforAuthSetting(buttomName: 'About',onTapFunction: (context){},),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: buttomForAuthSettingList.length,
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return   SizedBox(
          height: 2.h,
        );
      },
      itemBuilder: (context, index) {
        return buttomForAuthSettingList[index];
      },
    );
  }
}