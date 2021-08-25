import 'package:flutter/material.dart';
import 'package:portfolio/models/user_class.dart';
import 'package:portfolio/services/database.dart';
import 'package:portfolio/views/blogs/blogs_desktop.dart';
import 'package:provider/provider.dart';

class BlogsDesktopLayout extends StatefulWidget {
  const BlogsDesktopLayout({Key? key}) : super(key: key);

  @override
  _BlogsDesktopLayoutState createState() => _BlogsDesktopLayoutState();
}

class _BlogsDesktopLayoutState extends State<BlogsDesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Satyam Bansal",
              style: TextStyle(color: Colors.white, fontSize: 22.0),
            ),
            Text(
              "Blogs",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: Container(
                    child: Text(
                      "Home",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/signIn');
                  },
                  child: Container(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Container(
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: StreamProvider<List<BlogData>>.value(
          value: DatabaseService().allBlogsList,
          initialData: <BlogData>[],
          child: BlogsDesktop()),
    );
  }
}
