import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xpense/constants/color_const.dart';

class setupAccount extends StatelessWidget {
  const setupAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            "Let’s setup your account!",
            style: TextStyle(fontSize: 36),
          ),
          SizedBox(height: 16),
          Text(
            "Account can be your bank, credit card or your wallet.",
            style: TextStyle(fontSize: 14.0),
          ),
          SizedBox(
            height: 530,
          ),
          Container(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
                onPressed: () {}, //Write functionality here
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                    backgroundColor: MaterialStatePropertyAll(gradientColor1)),
                child: Text(
                  "Let's go",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
