import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:xpense/views/on_boarding_pages/addAccount.dart';
import 'package:xpense/views/on_boarding_pages/addAccountBank.dart';
import 'package:xpense/views/on_boarding_pages/setupAccount.dart';
import 'package:xpense/views/on_boarding_pages/setupPin.dart';
import 'package:xpense/views/on_boarding_pages/signupSuccess.dart';
=======
import 'package:xpense/views/Non%20Functionality/splash_screen/splash_screen.dart';
>>>>>>> d21d654ce38041e488be405de0f53032cee1e63f

import 'package:xpense/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
