import 'package:flutter/material.dart';

class OnBoardingPage3 extends StatelessWidget {
  const OnBoardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 100),
      Image.asset("assets/images/onboard3.png"),
      const SizedBox(
        width: 287,
        height: 150,
        child: Column(
          children: [
            Text(
              "Planning ahead",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
                "Setup your budget for each category so you in control ",
                style: TextStyle(fontSize: 16)),
          ],
        ),
      )
    ]);
  }
}
