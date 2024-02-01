import 'package:flutter/material.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/views/auth_screens/reset_password.dart';

class ForgetPasswordLoadingScreen extends StatelessWidget {
  const ForgetPasswordLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            Image.asset("assets/images/onboard1.png"),
            const SizedBox(height: 20,),
            const Text("Your email is on the way", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26),),
            const SizedBox(height: 20,),
            const Text(
              "Check your email test@test.com and follow the instructions to reset your password",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Button(
                onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ResetPassword(),)),
                text: "Back to Login")
          ],
        ),
      ),
    );
  }
}
