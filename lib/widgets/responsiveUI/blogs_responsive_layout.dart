import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 1000;
const int smallScreeSize = 360;

class BlogsResponsiveLayout extends StatelessWidget {
  final desktopLayout;
  final mobileTabletLayout;

  BlogsResponsiveLayout({this.desktopLayout, this.mobileTabletLayout});

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;
      if (_width >= mediumScreenSize) {
        return desktopLayout;
      } else {
        return mobileTabletLayout ?? desktopLayout;
      }
    });
  }
}
