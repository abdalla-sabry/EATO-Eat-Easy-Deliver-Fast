import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart'; // Only if you’re using Sizer for responsive design

class AddToCardButton extends StatelessWidget {
  const AddToCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 354/414*100.w,
        height: 60/891*100.h,
        child: ElevatedButton(
          onPressed: () {
            // TODO: Add action here
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF16A34A), // green color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50), // fully rounded
            ),
            padding: EdgeInsets.zero, // make sure text is centered properly
          ),
          child: const Text(
            'Add to Card',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
