import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/views/auth_screens/login_screen.dart';
import 'package:xpense/views/auth_screens/signup_screen.dart';
import 'package:xpense/views/Non%20Functionality/on_boarding_pages/page1.dart';
import 'package:xpense/views/Non%20Functionality/on_boarding_pages/page2.dart';
import 'package:xpense/views/Non%20Functionality/on_boarding_pages/page3.dart';

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
              children: const [
                OnBoardingPage1(),
                OnBoardingPage2(),
                OnBoardingPage3()
              ],
            ),
          ),
          SmoothPageIndicator(controller: controller, count: 3),
          const SizedBox(
            height: 40,
          ),
          Button(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('isFirstTime', false);

                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const SignupScreen(),
                ));
              },
              text: "Sign Up",
          ),
          Button(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('isFirstTime', false);
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ));
              },
              text: "Login",
        ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
