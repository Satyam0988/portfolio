import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/user_class.dart';
import 'package:portfolio/services/auth.dart';
import 'package:portfolio/widgets/blogs/add_blog.dart';
import 'package:portfolio/widgets/blogs/blog_tile.dart';
import 'package:portfolio/widgets/centered%20view/centered_view.dart';
import 'package:portfolio/widgets/logout/logout.dart';
import 'package:provider/provider.dart';

class BlogsDesktop extends StatefulWidget {
  const BlogsDesktop({Key? key}) : super(key: key);

  @override
  _BlogsDesktopState createState() => _BlogsDesktopState();
}

class _BlogsDesktopState extends State<BlogsDesktop> {
  Future<void> _showLogoutDialog() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Logout();
        });
  }

  @override
  Widget build(BuildContext context) {
    final blogs = Provider.of<List<BlogData>>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SmallCenteredView(SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: blogs.length,
              itemBuilder: (context, index) {
                return BlogTile(blog: blogs[index]);
              },
            ),
            SizedBox(
              height: 35.0,
            ),
            StreamProvider<user_class?>.value(
                value: AuthService().user,
                initialData: null,
                child: AddBlogButton()),
            SizedBox(
              height: 25.0,
            ),
            GestureDetector(
              onTap: () {
                _showLogoutDialog();
              },
              child: Container(
                height: 30.0,
                width: 100.0,
                // decoration: BoxDecoration(
                //     color: Colors.red,
                //     borderRadius: BorderRadius.circular(15.0)),
                child: Center(
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
