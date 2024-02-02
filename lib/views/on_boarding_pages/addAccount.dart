import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xpense/constants/color_const.dart';

class addAccount extends StatefulWidget {
  const addAccount({super.key});

  @override
  State<addAccount> createState() => _addAccountState();
}

class _addAccountState extends State<addAccount> {
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
          elevation: 0.0,
          leading: Icon(Icons.arrow_back, color: Colors.white),
          title: Center(
              child: Text(
            "Add new account",
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(top: 434),
              height: 323,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 52,
                  ),
                  Container(
                    width: 380,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Name'),
                    ),
                  ),
                  SizedBox(height: 26),
                  DropdownButton(
                    value: selectedCourseValue,
                    isDense: true,
                    isExpanded: true,
                    menuMaxHeight: 350,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Bank",
                          ),
                          value: ""),
                      ...dropDownListData.map<DropdownMenuItem<String>>((e) {
                        return DropdownMenuItem(
                            child: Text(e['title']), value: e['value']);
                      }).toList(),
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
                  SizedBox(
                    height: 93,
                  ),
                  Container(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                          onPressed: () {}, //Write functionality here
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              backgroundColor:
                                  MaterialStatePropertyAll(gradientColor1)),
                          child: Text(
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
