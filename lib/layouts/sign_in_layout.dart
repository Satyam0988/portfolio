import 'package:flutter/material.dart';
import 'package:portfolio/widgets/Mobile_Tablet/sign_in_mobile_tablet_layout.dart';
import 'package:portfolio/widgets/desktop/sign_in_desktop_layout.dart';
import 'package:portfolio/widgets/responsiveUI/sign_in_responsive_layout.dart';

class SignInLayout extends StatelessWidget {
  const SignInLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInResponsiveLayout(
        desktopLayout: SignInDesktopLayout(),
        mobileTabletLayout: SignInMobileTabletLayout(),
      ),
    );
  }
}
