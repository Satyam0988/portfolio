import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/widgets/centered%20view/centered_view.dart';

class ProjectsDesktop extends StatefulWidget {
  const ProjectsDesktop({Key? key}) : super(key: key);

  @override
  _ProjectsDesktopState createState() => _ProjectsDesktopState();
}

class _ProjectsDesktopState extends State<ProjectsDesktop>
    with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  @override
  void initState() {
    _controller1 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    _controller2 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    _controller3 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));

    _animation1 = Tween<double>(begin: 0, end: 1).animate(_controller1);
    _animation2 = Tween<double>(begin: 0, end: 1).animate(_controller2);
    _animation3 = Tween<double>(begin: 0, end: 1).animate(_controller3);

    Future.delayed(const Duration(milliseconds: 500), () {
      _controller1.forward();
    });
    Future.delayed(const Duration(milliseconds: 1000), () {
      _controller2.forward();
    });
    Future.delayed(const Duration(milliseconds: 1500), () {
      _controller3.forward();
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CenteredView(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Projects I've Undertaken",
                    style: TextStyle(color: Colors.white, fontSize: 36.0),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  FadeTransition(
                    opacity: _animation1,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        elevation: 0.0,
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Flutter Shopping Application",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.0),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    "A Flutter mobile application where users can buy and sell cars,\nwith Firebase Backend services like Authentication, Database\nand Storage.",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Text(
                                    "Visit the GitHub Repo",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  FadeTransition(
                    opacity: _animation2,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        elevation: 0.0,
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Flutter Portfolio + Blog PWA",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.0),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    "A Flutter PWA for my portfolio and blogs, with Firebase Backend\nservices like Authentication and Database for the blogs.",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Text(
                                    "Visit the GitHub Repo",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  FadeTransition(
                    opacity: _animation3,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        elevation: 0.0,
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "MNIST NN",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.0),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    "A simple 3 layered Neural Network with the ReLU activation\nfunction to label images using the MNIST dataset.",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Text(
                                    "Visit the Google Colab Notebook",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Lottie.asset(
                "assets/lottie/35684-business-team-discusses-project.json",
                width: MediaQuery.of(context).size.width * 0.4),
          ],
        ),
      ),
    );
  }
}
