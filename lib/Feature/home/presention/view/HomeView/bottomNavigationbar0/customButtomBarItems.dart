import 'package:flutter/material.dart';

class CustomBottomBarItem extends StatelessWidget {
  final String activeImage;
  final String inactiveImage;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const CustomBottomBarItem({
    super.key,
    required this.activeImage,
    required this.inactiveImage,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            isActive ? activeImage : inactiveImage,
            height: isActive ? 28 : 24,
            width: isActive ? 28 : 24,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey,
              fontSize: 12,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}


