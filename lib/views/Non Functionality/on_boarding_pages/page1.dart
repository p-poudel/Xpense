import 'package:flutter/material.dart';

class OnBoardingPage1 extends StatelessWidget {
  const OnBoardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 100),
      Image.asset("assets/images/onboard1.png"),
      const SizedBox(
        width: 287,
        height: 150,
        child: Column(
          children: [
            Text(
              "Gain total control of your money",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
                "Become your own money manager and make every cent count ",
                style: TextStyle(fontSize: 16)),
          ],
        ),
      )
    ]);
  }
}
