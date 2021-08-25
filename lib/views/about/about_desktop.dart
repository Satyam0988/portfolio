import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/widgets/centered%20view/centered_view.dart';

class AboutDesktop extends StatefulWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  _AboutDesktopState createState() => _AboutDesktopState();
}

class _AboutDesktopState extends State<AboutDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CenteredView(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "About Me",
                      style: TextStyle(color: Colors.red, fontSize: 36.0),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Hi There! I'm Satyam Bansal,",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "A Flutter developer, Competetive Programmer, and an AI/ML enthusiast currently residing in Delhi, India.",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "I've been learning about/developing Flutter apps for 2 months now and have just started working with Flutter Web, this website being my first project.",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "I've also been working with Neural Networks and Reinforcement Learning Algorithms.",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "I'm currently pursuing B. E.(Hons) Computer Science at the Birla Institute of Technology and Science, Pilani.",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    )
                  ],
                ),
              ),
            ),
            Lottie.asset(
              "assets/lottie/67254-person-working-creative.json",
            ),
          ],
        ),
      ),
    );
  }
}
