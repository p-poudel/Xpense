import 'package:flutter/material.dart';
import 'package:xpense/constants/color_const.dart';

class addAccountBank extends StatefulWidget {
  const addAccountBank({super.key});

  @override
  State<addAccountBank> createState() => _addAccountBankState();
}

class _addAccountBankState extends State<addAccountBank> {
  List dropDownListData = [
    {"title": "A", "value": "1"},
    {"title": "B", "value": "2"},
    {"title": "C", "value": "3"},
    {"title": "D", "value": "4"},
  ];
  String selectedCourseValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: gradientColor1,
        appBar: AppBar(
          backgroundColor: gradientColor1,
          leading: const Icon(Icons.arrow_back, color: Colors.white),
          title: const Center(
              child: Text(
            "Add new Wallet",
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: Stack(
          children: [
            const Column(
              children: [
                SizedBox(
                  height: 213,
                ),
                Text(
                  "Balance",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                Text(
                  "\$0.0",
                  style: TextStyle(color: Colors.white, fontSize: 64.0),
                )
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white,
              ),
              margin: const EdgeInsets.only(top: 324),
              height: 436,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 52,
                  ),
                  const SizedBox(
                    width: 380,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Chase'),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  DropdownButton(
                    value: selectedCourseValue,
                    isDense: true,
                    isExpanded: true,
                    menuMaxHeight: 350,
                    items: [
                      const DropdownMenuItem(
                          value: "",
                          child: Text(
                            "Bank",
                          )),
                      ...dropDownListData.map<DropdownMenuItem<String>>((e) {
                        return DropdownMenuItem(
                            value: e['value'],
                            child: Text(e['title']));
                      }),
                    ],
                    onChanged: (newValue) {
                      setState(
                        () {
                          selectedCourseValue = newValue!;
                          print(selectedCourseValue);
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 206),
                  SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                          onPressed: () {}, //Write functionality here
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              backgroundColor:
                                  const MaterialStatePropertyAll(gradientColor1)),
                          child: const Text(
                            "Continue",
                            style: TextStyle(color: Colors.white),
                          ))),
                ],
              ),
            ),
          ],
        ));
  }
}
