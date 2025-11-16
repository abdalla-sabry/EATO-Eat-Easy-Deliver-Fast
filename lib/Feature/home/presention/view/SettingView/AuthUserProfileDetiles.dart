import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/utiles/avater.dart';
import 'AuthNameEmailaddress.dart';


class AuthUserProfileDetiles extends StatelessWidget {
  const AuthUserProfileDetiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [Avater(size: 43.sp,),
          Padding(
            padding:  EdgeInsets.only(left: 1.w),
            child: AuthNameandEmailaddress(),
          ),]
    );
  }
}