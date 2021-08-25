import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/user_class.dart';
import 'package:portfolio/services/database.dart';
import 'package:portfolio/shared/error_dialog.dart';
import 'package:portfolio/shared/loading.dart';
import 'package:portfolio/widgets/centered%20view/centered_view.dart';
import 'package:provider/provider.dart';

class AddBlogFormDesktopLayout extends StatefulWidget {
  const AddBlogFormDesktopLayout({Key? key}) : super(key: key);

  @override
  _AddBlogFormDesktopLayoutState createState() =>
      _AddBlogFormDesktopLayoutState();
}

class _AddBlogFormDesktopLayoutState extends State<AddBlogFormDesktopLayout> {
  final _formKey = GlobalKey<FormState>();

  String _currentTitle = "-1";
  String _currentAuthor = "-1";
  String _currentReadingTime = "-1";
  String _currentContent = "-1";
  String _currentDate = "-1";
  String _currentUpvotes = "0";

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<user_class?>(context);

    Future<void> _showErrorDialog(String error) async {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return errorDialog(error: error);
          });
    }

    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Text(
                "Add a New Blog",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            body: CenteredView(
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: ListView(
                  children: <Widget>[
                    Form(
                      key: _formKey,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Title",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            TextFormField(
                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2.75,
                                  ),
                                ),
                              ),
                              validator: (val) =>
                                  val!.isEmpty ? "Please enter a Title" : null,
                              onChanged: (val) {
                                setState(() {
                                  _currentTitle = val;
                                });
                              },
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Author",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            TextFormField(
                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2.75,
                                  ),
                                ),
                              ),
                              validator: (val) => val!.isEmpty
                                  ? "Please enter the name of the Author"
                                  : null,
                              onChanged: (val) {
                                setState(() {
                                  _currentAuthor = val;
                                });
                              },
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Reading Time (mins)",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            TextFormField(
                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2.75,
                                  ),
                                ),
                              ),
                              validator: (val) => val!.isEmpty
                                  ? "Please enter the expected Reading Time"
                                  : null,
                              onChanged: (val) {
                                setState(() {
                                  _currentReadingTime = val;
                                });
                              },
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Date (DD Month Year)",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            TextFormField(
                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2.75,
                                  ),
                                ),
                              ),
                              validator: (val) =>
                                  val!.isEmpty ? "Please enter the Date" : null,
                              onChanged: (val) {
                                setState(() {
                                  _currentDate = val;
                                });
                              },
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Content",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            TextFormField(
                              autofocus: true,
                              minLines: 1,
                              maxLines: null,
                              textInputAction: TextInputAction.next,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2.75,
                                  ),
                                ),
                              ),
                              validator: (val) => val!.isEmpty
                                  ? "Please enter the Content"
                                  : null,
                              onChanged: (val) {
                                setState(() {
                                  _currentContent = val;
                                });
                              },
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          //print("tapped");
                          setState(() {
                            loading = true;
                          });
                          //print("loading");
                          BlogData blg = BlogData(
                              uid: user!.uid,
                              upvotes: _currentUpvotes,
                              author: _currentAuthor,
                              date: _currentDate,
                              title: _currentTitle,
                              readingTime: _currentReadingTime,
                              content: _currentContent);
                          //print("created blog");
                          dynamic res = await DatabaseService(uid: user.uid)
                              .addBlogData(blg);
                          //print("awaiting result");
                          if (res != null) {
                            setState(() {
                              loading = false;
                            });
                            _showErrorDialog("Could not add Blog");
                          } else {
                            setState(() {
                              loading = false;
                            });
                            Navigator.pop(context);
                          }
                        }
                      },
                      child: Container(
                        height: 35.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                            child: Text(
                          "Add",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
