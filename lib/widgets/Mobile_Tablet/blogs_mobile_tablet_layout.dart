import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/models/user_class.dart';
import 'package:portfolio/services/database.dart';
import 'package:portfolio/views/blogs/blogs_mobile_tablet.dart';
import 'package:provider/provider.dart';

class BlogsMobileTabletLayout extends StatefulWidget {
  const BlogsMobileTabletLayout({Key? key}) : super(key: key);

  @override
  _BlogsMobileTabletLayoutState createState() =>
      _BlogsMobileTabletLayoutState();
}

class _BlogsMobileTabletLayoutState extends State<BlogsMobileTabletLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: Container(
          color: Colors.red,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                color: Colors.black,
                child: DrawerHeader(
                    child: Lottie.asset("assets/lottie/50121-scrolling.json")),
              ),
              Container(
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/');
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
                        Navigator.pushNamed(context, '/signIn');
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.login,
                          size: 26.0,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.app_registration,
                          size: 26.0,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Register",
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Blogs",
          style: TextStyle(
              color: Colors.red, fontSize: 32.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: StreamProvider<List<BlogData>>.value(
          value: DatabaseService().allBlogsList,
          initialData: <BlogData>[],
          child: BlogsMobileTablet()),
    );
  }
}
