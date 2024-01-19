import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                content(
                    image1: "assets/images/onboard1.png",
                    text1: "Gain total control of your money",
                    text2:
                        "Become your own money manager and make every cent count"),
                content(
                    image1: "assets/images/onboard2.png",
                    text1: "Know where your money goes",
                    text2:
                        "Track your transaction easily,with categories and financial report "),
                content(
                    image1: "assets/images/onboard3.png",
                    text1: "Planning ahead",
                    text2:
                        "Setup your budget for each category so you in control "),
              ],
            ),
          ),
          Container(
              child: SmoothPageIndicator(controller: controller, count: 3)),
          SizedBox(
            height: 40,
          ),
          button(
              color1: Color(0xff7f3dff),
              text: "Sign Up",
              color2: Color(0xfffcfcfc)),
          button(
              color1: Color(0xffeee5ff),
              text: "Login",
              color2: Color(0xff7f3dff)),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  Widget content({image1, text1, text2}) {
    return Container(
        child: Column(children: [
      SizedBox(height: 100),
      Image(image: AssetImage(image1)),
      Container(
        width: 287,
        height: 150,
        child: Column(
          children: [
            Text(
              text1,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 12,
            ),
            Text(text2, style: TextStyle(fontSize: 16)),
          ],
        ),
      )
    ]));
  }

  Widget button({color1, text, color2}) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, left: 7, right: 7),
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color1),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11))),
          ),
          child: Text(
            text,
            style: TextStyle(color: color2, fontSize: 18),
          )),
    );
  }
}
