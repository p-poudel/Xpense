import 'package:flutter/material.dart';
import 'package:xpense/constants/color_const.dart';
import 'package:xpense/reusuable/custom_appbar.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/reusuable/custom_textfield.dart';

class IncomeScreen extends StatelessWidget {
  IncomeScreen({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        "Income",
        color: const Color(0xff00A86B),
        textColor: Colors.white,
      ),
      backgroundColor: const Color(0xff00A86B),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              color: const Color(0xff00A86B),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("How much?"),
                  Row(
                    children: [
                      Text("Rs. "),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                 
                  const Spacer(),
                  Button(
                      text: "Continue",
                      onPressed: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
