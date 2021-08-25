import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/widgets/centered%20view/centered_view.dart';

class AboutMobileTablet extends StatefulWidget {
  const AboutMobileTablet({Key? key}) : super(key: key);

  @override
  _AboutMobileTabletState createState() => _AboutMobileTabletState();
}

class _AboutMobileTabletState extends State<AboutMobileTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SmallCenteredView(
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "About Me",
                    style: TextStyle(color: Colors.red, fontSize: 36.0),
                  ),
                  Lottie.asset(
                      "assets/lottie/67254-person-working-creative.json",
                      height: MediaQuery.of(context).size.width * 0.4),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi There! I'm Satyam Bansal,",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Text(
                    "A Flutter developer, Competetive Programmer, and an AI/ML enthusiast currently residing in Delhi, India.",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Text(
                    "I've been learning about/developing Flutter apps for 2 months now and have just started working with Flutter Web, this website being my first project.",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Text(
                    "I've also been working with Neural Networks and Reinforcement Learning Algorithms.",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Text(
                    "I'm currently pursuing B. E.(Hons) Computer Science at the Birla Institute of Technology and Science, Pilani.",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
