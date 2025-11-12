import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';


List<BottomBarItem> kBottomBarItemsBar = [
  BottomBarItem(
    inActiveItem: Center(
      child: Image.asset(
        'assets/images/BottomNavigaton_BAr_homeScrean/home.gray.png',
        height: 24,
        width: 24,
        fit: BoxFit.contain,
      ),
    ),
    activeItem: Center(
      child: Image.asset(
        'assets/images/BottomNavigaton_BAr_homeScrean/Home.png',
        height: 28, // slightly bigger for active state
        width: 28,
        fit: BoxFit.contain,
      ),
    ),
    itemLabel: 'Home',
  ),
  BottomBarItem(
    inActiveItem: Center(
      child: Image.asset(
        'assets/images/BottomNavigaton_BAr_homeScrean/heart.png',
        height: 24,
        width: 24,
        fit: BoxFit.contain,
      ),
    ),
    activeItem: Center(
      child: Image.asset(
        'assets/images/BottomNavigaton_BAr_homeScrean/heartWhite.png',
        height: 28,
        width: 28,
        fit: BoxFit.contain,
      ),
    ),
    itemLabel: 'Favorites',
  ),
  BottomBarItem(
    inActiveItem: Center(
      child: Image.asset(
        'assets/images/BottomNavigaton_BAr_homeScrean/Location.png',
        height: 24,
        width: 24,
        fit: BoxFit.contain,
      ),
    ),
    activeItem: Center(
      child: Image.asset(
        'assets/images/BottomNavigaton_BAr_homeScrean/loactionWhite.png',
        height: 28,
        width: 28,
        fit: BoxFit.contain,
      ),
    ),
    itemLabel: 'Location',
  ),
  BottomBarItem(
    inActiveItem: Center(
      child: Image.asset(
        'assets/images/BottomNavigaton_BAr_homeScrean/shop.png',
        height: 24,
        width: 24,
        fit: BoxFit.contain,
      ),
    ),
    activeItem: Center(
      child: Image.asset(
        'assets/images/BottomNavigaton_BAr_homeScrean/shopingGray.png',
        height: 28,
        width: 28,
        fit: BoxFit.contain,
      ),
    ),
    itemLabel: 'Cart',
  ),
  BottomBarItem(
    inActiveItem: Center(
      child: Image.asset(
        'assets/images/BottomNavigaton_BAr_homeScrean/person.png',
        height: 24,
        width: 24,
        fit: BoxFit.contain,
      ),
    ),
    activeItem: Center(
      child: Image.asset(
        'assets/images/BottomNavigaton_BAr_homeScrean/personwhite.png',
        height: 28,
        width: 28,
        fit: BoxFit.contain,
      ),
    ),
    itemLabel: 'Profile',
  ),
];
