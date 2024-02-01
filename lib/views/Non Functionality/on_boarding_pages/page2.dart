import 'package:flutter/material.dart';

class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 100),
      Image.asset("assets/images/onboard2.png"),
      const SizedBox(
        width: 287,
        height: 150,
        child: Column(
          children: [
            Text(
              "Know where your money goes",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
                "Track your transaction easily,with categories and financial report ",
                style: TextStyle(fontSize: 16)),
          ],
        ),
      )
    ]);
  }
}
