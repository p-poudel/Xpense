import 'package:flutter/material.dart';
import 'package:xpense/activity_screens/expense.dart';
import 'package:xpense/activity_screens/income.dart';

import 'package:xpense/views/splash_screen/splash_screen.dart';
import 'package:xpense/welcome_screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExpenseScreen(),
    );
  }
}
