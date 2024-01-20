import 'package:flutter/material.dart';
import 'package:xpense/reusuable/custom_appbar.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/reusuable/custom_textfield.dart';
import 'package:xpense/views/auth_screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, "Sign Up"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // input fields
            CustomTextField(
                isVisible: true, title: "Name", controller: nameController),
            CustomTextField(
                isVisible: true, title: "Email", controller: nameController),
            CustomTextField(
                isVisible: false, title: "Password", controller: nameController),
      
            // check box
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    value: false,
                    checkColor: Colors.deepPurple,
                    activeColor: Colors.deepPurple,
                    side: const BorderSide(color: Colors.deepPurple, width: 2),
                    onChanged: (value) {}),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("By signing up, you agree to the"),
                        InkWell(
                            child: Text(
                          "Terms of Service",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w500),
                        ))
                      ],
                    ),
                    InkWell(
                        child: Text(
                      "and Privacy Policy",
                      style: TextStyle(
                          color: Colors.deepPurple, fontWeight: FontWeight.w500),
                    ))
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            // signup button
            button(
                onPressed: () {},
                color1: const Color(0xff7f3dff),
                text: "Sign Up",
                color2: const Color(0xfffcfcfc)),
            const SizedBox(height: 12),
            // or with
            const Text("or with"),
            const SizedBox(height: 12),
            // signup with google
            button(
                onPressed: () {},
                color1: Colors.white,
                text: "Sign Up with Google",
                color2: Colors.black),
      
            const SizedBox(height: 19),
            // already have an account?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?", style: TextStyle(color: Color(0xFF91919F), fontSize: 16),),
                TextButton(onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginScreen(),));
                }, child:  const Text(
                  "Login",
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Color(0xFF7F3DFF)),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
