import 'package:flutter/material.dart';
import 'package:xpense/reusuable/custom_appbar.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/reusuable/custom_textfield.dart';
import 'package:xpense/views/auth_screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, "Login"),
      body: Column(
        children: [
          // email field
          CustomTextField(isVisible: true, title: "Email", controller: emailcontroller),
    
          // password field
          CustomTextField(isVisible: true, title: "Password", controller: emailcontroller),

          const SizedBox(height: 40),
          // login button
           button(
              onPressed: (){},
              color1: const Color(0xff7f3dff),
              text: "Login",
              color2: const Color(0xfffcfcfc)),

          const SizedBox(height: 20),
          // forget password
          TextButton(onPressed: (){}, child: const Text("Forgot Password?", style: TextStyle(color: Color(0xFF7F3DFF), fontSize: 20),)),
    
          // dont have an account
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?", style: TextStyle(color: Color(0xFF91919F), fontSize: 16),),
                TextButton(onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const SignupScreen(),));
                }, child:  const Text(
                  "Sign Up",
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Color(0xFF7F3DFF)),
                ))
              ],
            )
        ],
      ),
    );
  }
}