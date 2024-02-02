import 'package:flutter/material.dart';
import 'package:xpense/constants/padding_const.dart';
import 'package:xpense/constants/text_decoration.dart';
import 'package:xpense/reusuable/custom_appbar.dart';
import 'package:xpense/reusuable/custom_appbar_back..dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/views/non_functional_screens/splash_screen/loading_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  // controller
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // validate email
  void _validateEmail(){
    if (_formKey.currentState!.validate()) {
        String email = _emailController.text.trim();

        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ForgetPasswordLoadingScreen(email: email,),));
    }
  }

  // clearing the memory occupied
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarBack(context, "Forget Password"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(children: [
            const Text("Don’t worry.\nEnter your email and we’ll send you a link to reset your password.", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),),
            const SizedBox(height: 20,),
            // email field
                  TextFormField(
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !(value.contains(".com"))) {
                        return "Enter a valid email address";
                      }
                      return null;
                    },
                    controller: _emailController,
                    decoration: InputDecoration(
                      enabledBorder: borderDecoration,
                      focusedBorder: borderDecoration,
                      contentPadding: fieldPadding,
                      hintText: "Email",
                    ),
                  ),
            const SizedBox(height: 20),
            
            Button(onPressed: ()=> _validateEmail(), text: "Continue")
          ],
          ),
        ),
      )
    );
  }
}