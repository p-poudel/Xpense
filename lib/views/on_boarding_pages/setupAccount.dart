import 'package:flutter/material.dart';
import 'package:xpense/reusuable/custom_appbar.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/views/on_boarding_pages/addAccount.dart';
import 'package:xpense/views/non_functional_screens/splash_screen/success_screen.dart';

class SetupAccount extends StatelessWidget {
  const SetupAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, ""),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
        child: Column(
          children: [
            const Text(
              "Let’s setup your account!",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30,),
            const Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: const Text("Account can be your bank, credit card or your wallet.",style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),),
            ),
            const Spacer(),
            Button(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SuccessSplashScreen(),));
            }, text: 'Let\'s go')
          ],
        ),
      ),
    );
  }
}
