import 'package:flutter/material.dart';
import 'package:xpense/constants/padding_const.dart';
import 'package:xpense/constants/text_decoration.dart';
import 'package:xpense/reusuable/custom_appbar.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/views/auth_screens/login_screen.dart';
import 'package:xpense/views/auth_screens/verify_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  // controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  // password visibility
  bool _isVisible = false;
  bool _isTick = false;

  // this function register the user to firebase
  void _registerUser() {
    String res = "";
    if (_formKey.currentState!.validate() && _isTick) {
      String email = _emailController.text.trim();
      String password = _passwordController.text;

      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => VerifyScreen(email: email),
      ));
    }
  }

  // clear the memory occupied
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Sign Up"),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
            child: Column(
              children: [
                // name field
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter a valid username";
                    }
                    return null;
                  },
                  controller: _nameController,
                  decoration: InputDecoration(
                    enabledBorder: borderDecoration,
                    focusedBorder: borderDecoration,
                    contentPadding: fieldPadding,
                    hintText: "Name",
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

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

                const SizedBox(
                  height: 20,
                ),

                // terms and conditions
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: _isTick,
                        activeColor: Colors.black,
                        side: const BorderSide(color: Colors.black, width: 2),
                        onChanged: (value) {
                          setState(() {
                            _isTick = !_isTick;
                          });
                        }),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("By signing up, you agree to the"),
                            InkWell(
                                child: Text(
                              " Terms of Service",
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
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w500),
                        ))
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                // signup button
                Button(
                  onPressed: () => _registerUser(),
                  text: "Sign Up",
                ),
                const SizedBox(height: 12),
                // or with
                const Text("or with"),
                const SizedBox(height: 12),
                // signup with google
                Container(
                  margin: const EdgeInsets.only(bottom: 10, left: 7, right: 7),
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.facebook,
                        color: Colors.black,
                        size: 35,
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11))),
                      ),
                      label: const Text(
                        "Sign up with Google",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )),
                ),

                const SizedBox(height: 19),
                // already have an account?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(color: Color(0xFF91919F), fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF7F3DFF)),
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
