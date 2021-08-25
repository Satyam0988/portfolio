import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/services/auth.dart';
import 'package:portfolio/shared/error_dialog.dart';
import 'package:portfolio/shared/loading.dart';
import 'package:portfolio/widgets/centered%20view/centered_view.dart';

class RegisterMobileTabletLayout extends StatefulWidget {
  const RegisterMobileTabletLayout({Key? key}) : super(key: key);

  @override
  _RegisterMobileTabletLayoutState createState() =>
      _RegisterMobileTabletLayoutState();
}

class _RegisterMobileTabletLayoutState
    extends State<RegisterMobileTabletLayout> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();
  bool loading = false;
  bool _autoFocus = true;

  //text field state
  String email = '';
  String password = '';
  String error = '';

  Future<void> _showErrorDialog(String error) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return errorDialog(error: error);
        });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.black,
            body: CenteredView(
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Register to Continue",
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        //fontFamily:
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Form(
                        key: _formkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Email",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 22.0),
                                    ),
                                  ),
                                  TextFormField(
                                    autofocus: _autoFocus,
                                    textInputAction: TextInputAction.next,
                                    style: TextStyle(
                                        fontSize: 22.0, color: Colors.white
                                        //fontFamily: ,
                                        ),
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
                                        ? "Please enter an email"
                                        : null,
                                    onChanged: (val) {
                                      setState(() {
                                        email = val;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Password",
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  TextFormField(
                                    textInputAction: TextInputAction.done,
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      color: Colors.white,
                                      //fontFamily: ,
                                    ),
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
                                    validator: (val) => val!.length < 8
                                        ? "Password should be longer than 8 characters"
                                        : null,
                                    onChanged: (val) {
                                      setState(() {
                                        password = val;
                                      });
                                    },
                                    obscureText: true,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            GestureDetector(
                              onTap: () async {
                                if (_formkey.currentState!.validate()) {
                                  setState(() {
                                    loading = true;
                                  });
                                  dynamic result =
                                      await _auth.registerWithEmailAndPassword(
                                          email, password);
                                  if (result == null) {
                                    setState(() {
                                      loading = false;
                                      _autoFocus = false;
                                    });
                                    error =
                                        "Could not Register with those Credentials";
                                    _showErrorDialog(error);
                                  } else {
                                    Navigator.pop(context);
                                  }
                                }
                              },
                              child: Container(
                                height: 50.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Center(
                                  child: Text(
                                    "REGISTER",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 80.0,
                            ),
                            Text(
                              "Already have an Account?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, '/signIn');
                              },
                              child: Container(
                                height: 50.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Center(
                                  child: Text(
                                    "SIGN IN",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          );
  }
}
