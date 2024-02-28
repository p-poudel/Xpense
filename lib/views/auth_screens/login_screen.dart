import 'package:flutter/material.dart';
import 'package:xpense/constants/color_const.dart';
import 'package:xpense/constants/padding_const.dart';
import 'package:xpense/constants/text_decoration.dart';
import 'package:xpense/reusuable/custom_appbar.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/views/auth_screens/forget_password_screen.dart';
import 'package:xpense/views/auth_screens/signup_screen.dart';
import 'package:xpense/views/on_boarding_pages/setupAccount.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // password visibility
  bool _isVisible = false;

  void _loginUser() {
    String res = "";
    if (_formKey.currentState!.validate()) {
      String email = _emailController.text.trim();
      String password = _passwordController.text;

      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const SetupAccount(),
      ));
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Login"),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
            child: Column(
              children: [
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

                const SizedBox(
                  height: 20,
                ),

                // password text field
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 6) {
                      return "Password field cannot be empty";
                    }
                    return null;
                  },
                  obscureText: !_isVisible,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    enabledBorder: borderDecoration,
                    focusedBorder: borderDecoration,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon: Icon(
                          _isVisible ? Icons.visibility : Icons.visibility_off,
                          size: 30,
                          color: Colors.grey,
                        )),
                    contentPadding: fieldPadding,
                    hintText: "Password",
                  ),
                ),

                const SizedBox(height: 40),
                // login button
                Button(
                    onPressed: () => _loginUser(),
                    text: "Login",
                  ),

                const SizedBox(height: 20),
                // forget password
                TextButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ForgetPasswordScreen(),
                        )),
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: gradientColor1, fontSize: 20),
                    )),

                // dont have an account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Color(0xFF91919F), fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ));
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: gradientColor1),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
