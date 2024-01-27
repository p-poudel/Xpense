import 'package:flutter/material.dart';
import 'package:xpense/reusuable/custom_appbar.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/reusuable/custom_textfield.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key, required this.email});
  final String email;

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final TextEditingController code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context, "Verification"),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text("Enter Your Verification Code",
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.w400)),
              CustomTextField(
                  isVisible: true,
                  title: "Verification Code",
                  controller: code),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("We have sent verification code to your email:"),
                  InkWell(
                      child: Text(
                    "example@example.com",
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.w500),
                  )),
                  Text("You can check your inbox."),
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
                  onPressed: () {},
                  color1: const Color(0xff7f3dff),
                  text: "Verify",
                  color2: const Color(0xfffcfcfc))
            ],
          ),
        ));
  }
}
