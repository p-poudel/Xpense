import 'package:flutter/material.dart';
import 'package:xpense/reusuable/custom_appbar.dart';
import 'package:xpense/reusuable/custom_button.dart';
import 'package:xpense/reusuable/custom_income_expense_style.dart';

class ExpenseScreen extends StatelessWidget {
  ExpenseScreen({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        "Expense",
        color: const Color(0xffFD3C4A),
        textColor: Colors.white,
      ),
      backgroundColor: const Color(0xffFD3C4A),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              color: const Color(0xffFD3C4A),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How much?",
                    style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Rs. ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 64,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '0',
                            hintStyle: IncomeExpenseStyle.customTextStyle,
                          ),
                          style: IncomeExpenseStyle.customTextStyle,
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
                  Button(text: "Continue", onPressed: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
