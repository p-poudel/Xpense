import 'package:flutter/material.dart';
import 'package:xpense/constants/color_const.dart';
import 'package:xpense/reusuable/custom_appbar.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/reusuable/custom_textfield.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Reset Password"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          CustomTextField(
              isVisible: true, title: "New Password", controller: controller),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
              isVisible: true,
              title: "Retype new password",
              controller: controller),
          const SizedBox(
            height: 15,
          ),
          button(
              color1: gradientColor1,
              color2: Colors.white,
              onPressed: () {},
              text: "Continue")
        ]),
      ),
    );
  }
}
