import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/views/auth_screens/login_screen.dart';
import 'package:xpense/views/auth_screens/signup_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
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
          SmoothPageIndicator(controller: controller, count: 3),
          const SizedBox(
            height: 40,
          ),
          button(
              onPressed: ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const SignupScreen(),)),
              color1: const Color(0xff7f3dff),
              text: "Sign Up",
              color2: const Color(0xfffcfcfc)),
          button(
              onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginScreen(),)),
              color1: const Color(0xffeee5ff),
              text: "Login",
              color2: const Color(0xff7f3dff)),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  Widget content({image1, text1, text2}) {
    return Column(children: [
      const SizedBox(height: 100),
      Image(image: AssetImage(image1)),
      SizedBox(
    width: 287,
    height: 150,
    child: Column(
      children: [
        Text(
          text1,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(text2, style: const TextStyle(fontSize: 16)),
      ],
    ),
      )
    ]);
  }
}