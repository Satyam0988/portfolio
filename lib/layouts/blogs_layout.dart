import 'package:flutter/material.dart';
import 'package:portfolio/widgets/Mobile_Tablet/blogs_mobile_tablet_layout.dart';
import 'package:portfolio/widgets/desktop/blogs_desktop_layout.dart';
import 'package:portfolio/widgets/responsiveUI/blogs_responsive_layout.dart';

class BlogsLayout extends StatelessWidget {
  const BlogsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlogsResponsiveLayout(
        desktopLayout: BlogsDesktopLayout(),
        mobileTabletLayout: BlogsMobileTabletLayout(),
      ),
    );
  }
}
