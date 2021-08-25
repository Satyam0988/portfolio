import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/views/about/about_mobile_tablet.dart';
import 'package:portfolio/views/contact/contact_mobile_tablet.dart';
import 'package:portfolio/views/education/education_mobile_tablet.dart';
import 'package:portfolio/views/home/home_mobile_tablet.dart';
import 'package:portfolio/views/projects/projects_mobile_tablet.dart';
import 'package:portfolio/views/skills/skills_mobile_tablet.dart';

class HomeMobileTabletLayout extends StatefulWidget {
  const HomeMobileTabletLayout({Key? key}) : super(key: key);

  @override
  _HomeMobileTabletLayoutState createState() => _HomeMobileTabletLayoutState();
}

class _HomeMobileTabletLayoutState extends State<HomeMobileTabletLayout> {
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();

    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: Container(
          color: Colors.red,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                color: Colors.black,
                child: DrawerHeader(
                    child: Lottie.asset("assets/lottie/50121-scrolling.json")),
              ),
              Container(
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _controller.animateToPage(0,
                            duration: Duration(milliseconds: 1200),
                            curve: Curves.easeInOut);
                        Navigator.pop(context);
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.home,
                          size: 26.0,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Home",
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _controller.animateToPage(1,
                            duration: Duration(milliseconds: 1200),
                            curve: Curves.easeInOut);
                        Navigator.pop(context);
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          size: 26.0,
                          color: Colors.white,
                        ),
                        title: Text(
                          "About",
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _controller.animateToPage(2,
                            duration: Duration(milliseconds: 1200),
                            curve: Curves.easeInOut);
                        Navigator.pop(context);
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.star,
                          size: 26.0,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Skills",
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _controller.animateToPage(3,
                            duration: Duration(milliseconds: 1200),
                            curve: Curves.easeInOut);
                        Navigator.pop(context);
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.construction,
                          size: 26.0,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Projects",
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _controller.animateToPage(4,
                            duration: Duration(milliseconds: 1200),
                            curve: Curves.easeInOut);
                        Navigator.pop(context);
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.school,
                          size: 26.0,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Education",
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _controller.animateToPage(5,
                            duration: Duration(milliseconds: 1200),
                            curve: Curves.easeInOut);
                        Navigator.pop(context);
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.contact_phone,
                          size: 26.0,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Contact",
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Satyam Bansal",
                style: TextStyle(color: Colors.white, fontSize: 36.0),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/blogs');
                },
                child: Container(
                  child: Text(
                    "Blogs",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        pageSnapping: false,
        children: <Widget>[
          HomeMobileTablet(),
          AboutMobileTablet(),
          SkillsMobileTablet(),
          ProjectsMobileTablet(),
          EducationMobileTablet(),
          ContactMobileTablet(),
        ],
      ),
    );
  }
}
