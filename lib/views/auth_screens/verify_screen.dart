import 'package:flutter/material.dart';
import 'package:xpense/reusuable/custom_appbar.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/reusuable/custom_codefield.dart';
import 'package:xpense/views/auth_screens/login_screen.dart';

class VerifyScreen extends StatefulWidget {
  VerifyScreen({super.key, required this.email});
  final String email;

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  // controllers
  final TextEditingController _code1 = TextEditingController();
  final TextEditingController _code2 = TextEditingController();
  final TextEditingController _code3 = TextEditingController();
  final TextEditingController _code4 = TextEditingController();
  final TextEditingController _code5 = TextEditingController();
  final TextEditingController _code6 = TextEditingController();

  // clearing the memory occupied
  @override
  void dispose() {
    super.dispose();
    _code1.dispose();
    _code2.dispose();
    _code3.dispose();
    _code4.dispose();
    _code5.dispose();
    _code6.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context, "Verification"),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // some text
                const Text("Enter Your\nVerification Code",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.w400)),
                const SizedBox(
                  height: 40,
                ),

                // code input field
                Form(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CodeField(codeController: _code1),
                    CodeField(
                      codeController: _code2,
                    ),
                    CodeField(
                      codeController: _code3,
                    ),
                    CodeField(
                      codeController: _code4,
                    ),
                    CodeField(
                      codeController: _code5,
                    ),
                    CodeField(
                      codeController: _code6,
                    )
                  ],
                )),

                const SizedBox(
                  height: 30,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("We have sent verification code to your email:", style: TextStyle(
                        fontSize: 17,
                      )),
                    InkWell(
                        child: Text(
                      widget.email,
                      style: const TextStyle(
                        fontSize: 17,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w500),
                    )),
                    const Text("You can check your inbox.", style: TextStyle(fontSize: 17),),
                  ],
                ),

                // i don't recieve a code
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "I didn't receive the code? Send Again!",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 17,
                          color: Color(0xFF7F3DFF)),
                    )),
                    const SizedBox(height: 20,),
                
                // verify button
                Button(
                  onPressed: () =>
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  )),
                  text: "Verify",
                )
              ],
            ),
          ),
        ));
  }
}
