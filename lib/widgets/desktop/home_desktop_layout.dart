import 'package:flutter/material.dart';
import 'package:portfolio/views/about/about_desktop.dart';
import 'package:portfolio/views/contact/contact_desktop.dart';
import 'package:portfolio/views/education/education_desktop.dart';
import 'package:portfolio/views/home/home_desktop.dart';
import 'package:portfolio/views/projects/projects_desktop.dart';
import 'package:portfolio/views/skills/skills_desktop.dart';

class HomeDesktopLayout extends StatefulWidget {
  const HomeDesktopLayout({Key? key}) : super(key: key);

  @override
  _HomeDesktopLayoutState createState() => _HomeDesktopLayoutState();
}

class _HomeDesktopLayoutState extends State<HomeDesktopLayout> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Satyam Bansal",
                style: TextStyle(color: Colors.white, fontSize: 36.0),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        _controller.animateToPage(0,
                            duration: Duration(milliseconds: 1200),
                            curve: Curves.easeInOut);
                      },
                      child: selected == 0
                          ? SelectedNavBarItem("Home")
                          : NavBarItem("Home")),
                  GestureDetector(
                      onTap: () {
                        _controller.animateToPage(1,
                            duration: Duration(milliseconds: 1200),
                            curve: Curves.easeInOut);
                      },
                      child: selected == 1
                          ? SelectedNavBarItem("About")
                          : NavBarItem("About")),
                  GestureDetector(
                      onTap: () {
                        _controller.animateToPage(2,
                            duration: Duration(milliseconds: 1200),
                            curve: Curves.easeInOut);
                      },
                      child: selected == 2
                          ? SelectedNavBarItem("Skills")
                          : NavBarItem("Skills")),
                  GestureDetector(
                      onTap: () {
                        _controller.animateToPage(3,
                            duration: Duration(milliseconds: 1200),
                            curve: Curves.easeInOut);
                      },
                      child: selected == 3
                          ? SelectedNavBarItem("Projects")
                          : NavBarItem("Projects")),
                  GestureDetector(
                      onTap: () {
                        _controller.animateToPage(4,
                            duration: Duration(milliseconds: 1200),
                            curve: Curves.easeInOut);
                      },
                      child: selected == 4
                          ? SelectedNavBarItem("Education")
                          : NavBarItem("Education")),
                  GestureDetector(
                      onTap: () {
                        _controller.animateToPage(5,
                            duration: Duration(milliseconds: 1200),
                            curve: Curves.easeInOut);
                      },
                      child: selected == 5
                          ? SelectedNavBarItem("Contact")
                          : NavBarItem("Contact")),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/blogs');
                      },
                      child: NavBarItem("Blogs")),
                ],
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        pageSnapping: false,
        onPageChanged: (pgno) {
          setState(() {
            selected = pgno;
          });
        },
        children: <Widget>[
          HomeDesktop(),
          AboutDesktop(),
          SkillsDesktop(),
          ProjectsDesktop(),
          EducationDesktop(),
          ContactDesktop(),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;
  NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3.0),
      child: Container(
        height: 35.0,
        width: 95.0,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(15.0)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}

class SelectedNavBarItem extends StatelessWidget {
  final String title;
  SelectedNavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3.0),
      child: Container(
        height: 35.0,
        width: 95.0,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(15.0)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
