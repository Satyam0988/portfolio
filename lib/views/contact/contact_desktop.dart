import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/centered%20view/centered_view.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class ContactDesktop extends StatefulWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  _ContactDesktopState createState() => _ContactDesktopState();
}

class _ContactDesktopState extends State<ContactDesktop>
    with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late AnimationController _controller4;
  late AnimationController _controller5;
  late AnimationController _controller6;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;
  late Animation<double> _animation4;
  late Animation<double> _animation5;
  late Animation<double> _animation6;

  @override
  void initState() {
    _controller1 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    _controller2 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    _controller3 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    _controller4 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    _controller5 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    _controller6 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));

    _animation1 = Tween<double>(begin: 0, end: 1).animate(_controller1);
    _animation2 = Tween<double>(begin: 0, end: 1).animate(_controller2);
    _animation3 = Tween<double>(begin: 0, end: 1).animate(_controller3);
    _animation4 = Tween<double>(begin: 0, end: 1).animate(_controller4);
    _animation5 = Tween<double>(begin: 0, end: 1).animate(_controller5);
    _animation6 = Tween<double>(begin: 0, end: 1).animate(_controller6);

    Future.delayed(const Duration(milliseconds: 500), () {
      _controller1.forward();
    });
    Future.delayed(const Duration(milliseconds: 1000), () {
      _controller2.forward();
    });
    Future.delayed(const Duration(milliseconds: 1500), () {
      _controller3.forward();
    });
    Future.delayed(const Duration(milliseconds: 2000), () {
      _controller4.forward();
    });
    Future.delayed(const Duration(milliseconds: 2500), () {
      _controller5.forward();
    });
    Future.delayed(const Duration(milliseconds: 3000), () {
      _controller6.forward();
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    _controller6.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CenteredView(
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Contact",
                style: TextStyle(color: Colors.white, fontSize: 36.0),
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                "Let's build something together!",
                style: TextStyle(color: Colors.red, fontSize: 24.0),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FadeTransition(
                    opacity: _animation1,
                    child: Container(
                      height: 150.0,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Card(
                        color: Colors.red,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            Icon(
                              Icons.email,
                              size: 48.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Email",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Text(
                              "satyambansal2002@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      js.context.callMethod(
                          "open", ["https://github.com/Satyam0988/"]);
                    },
                    child: FadeTransition(
                      opacity: _animation2,
                      child: Container(
                        height: 150.0,
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Card(
                          color: Colors.red,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              FaIcon(
                                FontAwesomeIcons.github,
                                size: 48.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "GitHub",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Satyam0988",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      js.context.callMethod("open",
                          ["https://linkedin.com/in/satyam-bansal-961355196"]);
                    },
                    child: FadeTransition(
                      opacity: _animation3,
                      child: Container(
                        height: 150.0,
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Card(
                          color: Colors.red,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              FaIcon(
                                FontAwesomeIcons.linkedin,
                                size: 48.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "LinkedIn",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Satyam Bansal",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      js.context.callMethod(
                          "open", ["https://www.facebook.com/satyam.bansal.7"]);
                    },
                    child: FadeTransition(
                      opacity: _animation4,
                      child: Container(
                        height: 150.0,
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Card(
                          color: Colors.red,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              FaIcon(
                                FontAwesomeIcons.facebook,
                                size: 48.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "FaceBook",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Satyam Bansal",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  FadeTransition(
                    opacity: _animation5,
                    child: Container(
                      height: 150.0,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Card(
                        color: Colors.red,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.discord,
                              size: 48.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Discord",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Text(
                              "RedJohn#5065",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      js.context.callMethod(
                          "open", ["https://www.instagram.com/satyam098/"]);
                    },
                    child: FadeTransition(
                      opacity: _animation6,
                      child: Container(
                        height: 150.0,
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Card(
                          color: Colors.red,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              FaIcon(
                                FontAwesomeIcons.instagram,
                                size: 48.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Instagram",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "@satyam098",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
