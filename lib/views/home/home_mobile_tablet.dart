import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/centered%20view/centered_view.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class HomeMobileTablet extends StatefulWidget {
  const HomeMobileTablet({Key? key}) : super(key: key);

  @override
  _HomeMobileTabletState createState() => _HomeMobileTabletState();
}

class _HomeMobileTabletState extends State<HomeMobileTablet>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2500));

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    Future.delayed(const Duration(milliseconds: 2500), () {
      _controller.forward();
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SmallCenteredView(
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.22 > 200.0
                      ? 200.0
                      : MediaQuery.of(context).size.width * 0.22,
                  child: SizedBox(
                    height: 400.0,
                    width: 400.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200.0),
                      child: Image(
                        image: AssetImage("assets/images/img2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    TweenAnimationBuilder(
                      duration: Duration(milliseconds: 2000),
                      tween: Tween<double>(
                        begin: 0,
                        end: 1,
                      ),
                      child: Text(
                        "Hello There!\n",
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      builder:
                          (BuildContext context, double _val, Widget? child) {
                        return Opacity(
                          opacity: _val,
                          child: child,
                        );
                      },
                    ),
                    FadeTransition(
                      opacity: _animation,
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: "I'm an ",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 36.0),
                              children: [
                                TextSpan(
                                    text: "AI/ML ",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 38.0)),
                                TextSpan(
                                    text: "enthusiast\nand a ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36.0)),
                                TextSpan(
                                    text: "Flutter ",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 38.0)),
                                TextSpan(
                                    text: "Developer.",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36.0)),
                              ])),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    FadeTransition(
                      opacity: _animation,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              onPressed: () {
                                js.context.callMethod(
                                    "open", ["https://github.com/Satyam0988/"]);
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.github,
                                color: Colors.white,
                                size: 36.0,
                              )),
                          SizedBox(
                            width: 30.0,
                          ),
                          IconButton(
                              onPressed: () {
                                js.context.callMethod("open", [
                                  "https://linkedin.com/in/satyam-bansal-961355196"
                                ]);
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.linkedin,
                                color: Colors.white,
                                size: 36.0,
                              )),
                          SizedBox(
                            width: 30.0,
                          ),
                          IconButton(
                              onPressed: () {
                                js.context.callMethod("open",
                                    ["https://www.instagram.com/satyam098/"]);
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.instagram,
                                color: Colors.white,
                                size: 36.0,
                              )),
                          SizedBox(
                            width: 30.0,
                          ),
                          IconButton(
                              onPressed: () {
                                js.context.callMethod("open", [
                                  "https://www.facebook.com/satyam.bansal.7"
                                ]);
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Colors.white,
                                size: 36.0,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
