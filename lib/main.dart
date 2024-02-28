import 'package:flutter/material.dart';

import 'package:xpense/views/functional_screens/main_screens/home_page.dart';
import 'package:xpense/views/non_functional_screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}
