import 'package:flutter/material.dart';
import 'package:portfolio/models/user_class.dart';
import 'package:portfolio/services/auth.dart';
import 'package:portfolio/widgets/Mobile_Tablet/add_blog_form_mobile_tablet_layout.dart';
import 'package:portfolio/widgets/desktop/add_blog_form_desktop_layout.dart';
import 'package:portfolio/widgets/responsiveUI/add_blog_form_responsive_layout.dart';
import 'package:provider/provider.dart';

class AddBlogFormLayout extends StatelessWidget {
  const AddBlogFormLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddBlogFormResponsiveLayout(
        desktopLayout: StreamProvider<user_class?>.value(
            value: AuthService().user,
            initialData: null,
            child: AddBlogFormDesktopLayout()),
        mobileTabletLayout: StreamProvider<user_class?>.value(
            value: AuthService().user,
            initialData: null,
            child: AddBlogFormMobileTabletLayout()),
      ),
    );
  }
}
