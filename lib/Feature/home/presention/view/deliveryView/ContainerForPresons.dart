import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ContainerForPresons extends StatelessWidget {
   ContainerForPresons({super.key,required this.onPersonSelected});
  final Function(int) onPersonSelected;
  @override
  Widget build(BuildContext context) {
    return

      Positioned(
        bottom: 4.h,
        left: 4.w,
        child: Container(
          width: 92 .w,
          height: (130   / 896) * 100.h,

          padding: EdgeInsets.symmetric(
            horizontal: (14 / 414) * 100.w,
            // vertical: (10 / 896) * 100.h,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular((22 / 414) * 100.w),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: (12 / 896) * 100.h,
                offset: Offset(0, (6 / 896) * 100.h),
              ),
            ],
          ),
          // equivalent to about 100 pixels on iPhone 11 Pro Max
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: (){
                  return onPersonSelected(1);
                },
                child: Container(width: 20.w,height: 16.7.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/avater4.png'),
                      fit: BoxFit.cover,
                    ),
                  ),),
              ),
              SizedBox(width: (23 / 414) * 100.w),

              // Avatar 1
              GestureDetector(
                onTap: (){
                  return onPersonSelected(2);
                },
                child: Container(width: 27.w,height: 16.7.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/avater1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),),
              ),


              // Avatar 2
              GestureDetector(
                onTap: (){
                  return onPersonSelected(3);
                },
                child: Container(width: 27.w,height: 16.7.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/avater2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),),
              ),

              // Avatar 3
              GestureDetector(
                onTap: (){
                  return onPersonSelected(4);
                },
                child: Container(width: 27.w,height: 16.7.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/avater3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),),
              ),

              // Avatar 4
            ],
          ),
        ),
      );
  }
  }