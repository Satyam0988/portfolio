import 'package:flutter/material.dart';
import 'package:portfolio/widgets/Mobile_Tablet/register_mobile_tablet_layout.dart';
import 'package:portfolio/widgets/desktop/register_desktop_layout.dart';
import 'package:portfolio/widgets/responsiveUI/register_responsive_layout.dart';

class RegisterLayout extends StatelessWidget {
  const RegisterLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterResponsiveLayout(
        desktopLayout: RegisterDesktopLayout(),
        mobileTabletLayout: RegisterMobileTabletLayout(),
      ),
    );
  }
}
