import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/widgets/centered%20view/centered_view.dart';

class SkillsDesktop extends StatefulWidget {
  const SkillsDesktop({Key? key}) : super(key: key);

  @override
  _SkillsDesktopState createState() => _SkillsDesktopState();
}

class _SkillsDesktopState extends State<SkillsDesktop>
    with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late AnimationController _controller4;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;
  late Animation<double> _animation4;

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

    _animation1 = Tween<double>(begin: 0, end: 1).animate(_controller1);
    _animation2 = Tween<double>(begin: 0, end: 1).animate(_controller2);
    _animation3 = Tween<double>(begin: 0, end: 1).animate(_controller3);
    _animation4 = Tween<double>(begin: 0, end: 1).animate(_controller4);

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

    super.initState();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
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
            Lottie.asset("assets/lottie/33502-programmer-man.json",
                width: MediaQuery.of(context).size.width * 0.35),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "What I've Been Working On",
                    style: TextStyle(color: Colors.white, fontSize: 36.0),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  FadeTransition(
                    opacity: _animation1,
                    child: Container(
                      height: 70.0,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            "Flutter App Development",
                            style:
                                TextStyle(color: Colors.white, fontSize: 22.0),
                          ),
                        ),
                        // elevation: 15.0,
                        // shadowColor: Colors.white,
                      ),
                    ),
                  ),
                  FadeTransition(
                    opacity: _animation2,
                    child: Container(
                      height: 70.0,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            "Flutter Web Development",
                            style:
                                TextStyle(color: Colors.white, fontSize: 22.0),
                          ),
                        ),
                        // elevation: 15.0,
                        // shadowColor: Colors.white,
                      ),
                    ),
                  ),
                  FadeTransition(
                    opacity: _animation3,
                    child: Container(
                      height: 70.0,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            "Neural Networks",
                            style:
                                TextStyle(color: Colors.white, fontSize: 22.0),
                          ),
                        ),
                        // elevation: 15.0,
                        // shadowColor: Colors.white,
                      ),
                    ),
                  ),
                  FadeTransition(
                    opacity: _animation4,
                    child: Container(
                      height: 70.0,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            "Reinforcement Learning",
                            style:
                                TextStyle(color: Colors.white, fontSize: 22.0),
                          ),
                        ),
                        // elevation: 15.0,
                        // shadowColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
