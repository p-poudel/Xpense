import 'package:flutter/material.dart';
import 'package:xpense/constants/padding_const.dart';
import 'package:xpense/constants/text_decoration.dart';
import 'package:xpense/reusuable/custom_appbar_back..dart';
import 'package:xpense/reusuable/custom_button.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // validate password
  void _validatePassword() {
    if (_formKey.currentState!.validate()) {
      String newPassword = _passwordController.text;
    }
  }


  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _newPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarBack(context, "Reset Password"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(children: [
            
                  // password text field
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 6) {
                        return "Please enter a stronger password";
                      }else if(_passwordController.text != _newPasswordController.text){
                        return "Password doesn't match";
                      }
                      return null;
                    },
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      enabledBorder: borderDecoration,
                      focusedBorder: borderDecoration,
                      contentPadding: fieldPadding,
                      hintText: "New Password",
                    ),
                  ),
        
                  const SizedBox(height: 20,),
                  // password text field
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 6) {
                        return "Please enter a stronger password";
                      }else if(_passwordController.text != _newPasswordController.text){
                        return "Password doesn't match";
                      }
                      return null;
                    },
                    obscureText: true,
                    controller: _newPasswordController,
                    decoration: InputDecoration(
                      enabledBorder: borderDecoration,
                      focusedBorder: borderDecoration,
                      contentPadding: fieldPadding,
                      hintText: "Password",
                    ),
                  ),
            const SizedBox(
              height: 20,
            ),
            Button(
                onPressed: () => _validatePassword(),
                text: "Continue")
          ]),
        ),
      ),
    );
  }
}
