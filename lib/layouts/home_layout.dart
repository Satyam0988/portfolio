import 'package:flutter/material.dart';
import 'package:portfolio/widgets/Mobile_Tablet/home_mobile_tablet_layout.dart';
import 'package:portfolio/widgets/desktop/home_desktop_layout.dart';
import 'package:portfolio/widgets/responsiveUI/home_responsive_layout.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeResponsiveLayout(
        desktopLayout: HomeDesktopLayout(),
        mobileTabletLayout: HomeMobileTabletLayout(),
      ),
    );
  }
}
