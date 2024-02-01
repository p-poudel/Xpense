import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signupSuccess extends StatelessWidget {
  const signupSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Container(
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
