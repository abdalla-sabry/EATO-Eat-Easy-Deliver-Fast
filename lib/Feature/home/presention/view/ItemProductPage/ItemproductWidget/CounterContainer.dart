import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CounterContainer extends StatefulWidget {
  const CounterContainer({super.key});

  @override
  State<CounterContainer> createState() => _CounterContainerState();
}

class _CounterContainerState extends State<CounterContainer> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100 / 414 * 100.w,
      height: 40 / 896 * 100.h,
      decoration: BoxDecoration(
        color: const Color(0xFFFFC107), // yellow color
        borderRadius: BorderRadius.circular(50), // rounded pill shape
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              if (count > 1) {
                setState(() => count--);
              }
            },
            child:  Icon(Icons.remove, size: 18/414*100.w,color: Colors.black),
          ),
          Text(
            '$count',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () => setState(() => count++),
            child:  Icon(Icons.add,size: 18/414*100.w, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
