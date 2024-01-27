import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xpenses"),
      ),
      body: const Center(child: Text("Let's start to build our app...")),
    );
  }
}
