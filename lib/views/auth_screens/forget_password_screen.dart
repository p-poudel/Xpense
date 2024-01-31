import 'package:flutter/material.dart';
import 'package:xpense/constants/color_const.dart';
import 'package:xpense/reusuable/custom_appbar.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/reusuable/custom_textfield.dart';
import 'package:xpense/views/auth_screens/loading_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Forget Password"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Text("Don’t worry.\nEnter your email and we’ll send you a link to reset your password.", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),),
          const SizedBox(height: 20,),
          CustomTextField(isVisible: true, title: "Email", controller: controller),
          const SizedBox(height: 20,),
          button(color1: gradientColor1, color2: Colors.white, onPressed: ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ForgetPasswordLoadingScreen(),)), text: "Continue")
        ],
        ),
      )
    );
  }
}