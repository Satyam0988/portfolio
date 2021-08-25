import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/widgets/centered%20view/centered_view.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class EducationMobileTablet extends StatefulWidget {
  const EducationMobileTablet({Key? key}) : super(key: key);

  @override
  _EducationMobileTabletState createState() => _EducationMobileTabletState();
}

class _EducationMobileTabletState extends State<EducationMobileTablet>
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
      body: SmallCenteredView(
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Education",
                style: TextStyle(color: Colors.white, fontSize: 36.0),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Lottie.asset(
                      "assets/lottie/54639-boy-studying-science.json",
                      height: MediaQuery.of(context).size.width * 0.35)),
              SizedBox(
                height: 10.0,
              ),
              FadeTransition(
                opacity: _animation1,
                child: Container(
                  height: 100.0,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    color: Colors.red,
                    elevation: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/download.jpeg",
                            height: 60.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "Delhi Public School Bangalore East",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                              Text(
                                "(2010-2018)",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  js.context.callMethod("open",
                                      ["https://east.dpsbangalore.edu.in/"]);
                                },
                                child: Container(
                                  child: Text(
                                    "Visit the Website",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ),
                            ],
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
                  height: 100.0,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    color: Colors.red,
                    elevation: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/dpsLogoMed.jpg",
                            height: 60.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "Delhi Public School R. K. Puram",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                              Text(
                                "(2018-2020)",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  js.context.callMethod(
                                      "open", ["https://dpsrkp.net/"]);
                                },
                                child: Container(
                                  child: Text(
                                    "Visit the Website",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ),
                            ],
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
                  height: 110.0,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    color: Colors.red,
                    elevation: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/1200px-BITS_Pilani-Logo.svg.png",
                            height: 60.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "Birla Institute of Technology and Science,",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                              Text(
                                "Pilani",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                              Text(
                                "(2020-2024)",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  js.context.callMethod("open",
                                      ["https://www.bits-pilani.ac.in/"]);
                                },
                                child: Container(
                                  child: Text(
                                    "Visit the Website",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
