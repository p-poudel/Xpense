import 'package:flutter/material.dart';
import "package:xpense/reusuable/custom_appbar.dart";
import 'package:xpense/views/functional_screens/main_screens/home_page.dart';

class SuccessSplashScreen extends StatefulWidget {
  const SuccessSplashScreen({super.key});

  @override
  State<SuccessSplashScreen> createState() => _SuccessSplashScreenState();
}

class _SuccessSplashScreenState extends State<SuccessSplashScreen> {

  @override
  void initState() {
  super.initState();
  Future.delayed(const Duration(seconds: 2), () {
    Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const homeScreen()));
        
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, ""),
      backgroundColor: Colors.white,
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 90,
            ),
            SizedBox(
              height: 34,
            ),
            Text(
              "You are set!",
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
