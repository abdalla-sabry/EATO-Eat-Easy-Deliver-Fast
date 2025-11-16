import 'package:eato/core/utiles/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../deliveryView/DelivryPageWthOutDeliveyProcessing.dart';
import 'HomeVeiwContant/Catigores/Catiorysection.dart';
import 'HomeVeiwContant/Recommended/RecommendedSection.dart';
import 'HomeVeiwContant/SearchBarAndCatigory/SearchBarAndCarigory.dart';
import 'HomeVeiwContant/TopBarSection/AvaterWithAppName.dart';
import '../deliveryView/deliveryPaga.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});
  static const String routeName='Homeview';

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: ListView(
        children: [
          SizedBox(
            height: 5.h,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DelivryPageWthOutDeliveyProcessing(

                    ),
                  ),
                );
              },
              child: TopBarSection()),
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
