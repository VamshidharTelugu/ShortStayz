import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:short_stays/main_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  var intro_screens = [
    PageViewModel(
      title: "Hassle free booking",
      body: "Can't predict your unplanned hotel needs? We got your back!",
      image: Center(
          child: Image.asset("assets/images/hand.jpg")
          //  SvgPicture.asset("assets/images/4420.svg",
          //     semanticsLabel: 'Label'),
      ),
    ),
    PageViewModel(
      title: "Pay per hour",
      body: "Why book for a whole day, When you only want to stay for a while",
      image: Center(
        child: Image.asset('assets/images/receptionpic.jpg'),
      ),
    ),
    PageViewModel(
      title: "Simple and Flexible",
      body: "Because we too hate paper work!",
      image: Center(
        child: Image.asset('assets/images/2people.jpg'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntroductionScreen(
        pages: intro_screens,
        onDone: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
        },
        showSkipButton: true,
        skip: const Text("Skip"),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      ),
    );
  }
}
