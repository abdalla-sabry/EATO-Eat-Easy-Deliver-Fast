import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'CatigoryContainer.dart';

class CatigoryItemsSection extends StatefulWidget {
  const CatigoryItemsSection({super.key});

  @override
  State<CatigoryItemsSection> createState() => _CatigoryItemsSectionState();
}

class _CatigoryItemsSectionState extends State<CatigoryItemsSection> {
  final ScrollController _scrollController = ScrollController();
  int selectedIndex = 0; // start with first selected

  final List<Map<String, String>> items = [
    {
      'image': 'assets/images/catigouresHomeScrean/sandwatchSmaill.png',
      'name': 'Sandwich',
    },
    {
      'image': 'assets/images/catigouresHomeScrean/pizza.png',
      'name': 'Pizza',
    },
    {
      'image': 'assets/images/catigouresHomeScrean/burrger.png',
      'name': 'Burger',
    },
    {
      'image': 'assets/images/catigouresHomeScrean/drankes.png',
      'name': 'Drinks',
    },
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    // Example: change index when user scrolls 24% of the width
    double scrollPercent =
        _scrollController.offset / _scrollController.position.maxScrollExtent;
    if (scrollPercent <= 0.75 && scrollPercent > 0.5 && selectedIndex != 2) {
      setState(() => selectedIndex = 1);
    } else if (scrollPercent <= 0.5 && scrollPercent > 0.24 && selectedIndex != 1) {
      setState(() => selectedIndex = 1);
    } else if (scrollPercent <= 0.24 && selectedIndex != 0) {
      setState(() => selectedIndex = 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25 / 414 * 100.w),
      child: SizedBox(
        height: 20.h,
        child: ListView.separated(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          separatorBuilder: (context, index) =>
              SizedBox(width: 22 / 414 * 100.w),
          itemBuilder: (context, index) {
            return CatigoryContainer(
              urlPath: items[index]['image']!,
              catigoryName: items[index]['name']!,
              isSelact: selectedIndex == index,
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
