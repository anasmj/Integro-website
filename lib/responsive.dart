import 'package:flutter/material.dart';

class Responsive {
  // final Widget largeScreen;
  // final Widget? mediumScreen;
  // final Widget? mobileScreen;

  // Responsive({required this.largeScreen, this.mediumScreen, this.mobileScreen});

  //Returns true/false for after checking screen size
  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;
  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width <= 1100;
  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > 1100;
}
