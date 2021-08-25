import 'package:flutter/material.dart';
import 'package:portfolio/layouts/add_blog_form_layout.dart';
import 'package:portfolio/models/user_class.dart';
import 'package:provider/provider.dart';

class AddBlogButton extends StatefulWidget {
  const AddBlogButton({Key? key}) : super(key: key);

  @override
  _AddBlogButtonState createState() => _AddBlogButtonState();
}

class _AddBlogButtonState extends State<AddBlogButton> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<user_class?>(context);

    return GestureDetector(
      onTap: () {
        if (user == null) {
          Navigator.pushNamed(context, '/signIn');
        } else {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddBlogFormLayout()));
        }
      },
      child: Container(
        height: 50.0,
        width: 200.0,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(15.0)),
        child: Center(
          child: Text(
            "Add a new Blog",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
