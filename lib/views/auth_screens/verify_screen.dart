import 'package:flutter/material.dart';
import 'package:xpense/constants/color_const.dart';
import 'package:xpense/reusuable/custom_appbar.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/reusuable/custom_textfield.dart';
import 'package:xpense/views/auth_screens/login_screen.dart';

class VerifyScreen extends StatelessWidget {
  VerifyScreen({super.key, required this.email});
  final String email;

  final TextEditingController code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context, "Verification"),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Enter Your\nVerification Code",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.w400)),
                CustomTextField(
                    isVisible: true,
                    title: "1    2    3    4    5    6",
                    controller: code),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("We have sent verification code to your email:"),
                    InkWell(
                        child: Text(
                      email,
                      style: const TextStyle(
                          color: Colors.deepPurple, fontWeight: FontWeight.w500),
                    )),
                    const Text("You can check your inbox."),
                  ],
                           ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "I didn't receive the code? Send Again!",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xFF7F3DFF)),
                    )),
                button(
                    onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginScreen(),)),
                    color1: gradientColor1,
                    text: "Verify",
                    color2: Colors.white)
              ],
            ),
          ),
        ));
  }
}
