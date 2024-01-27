import 'package:flutter/material.dart';

Widget button({color1, text, color2, onPressed}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10, left: 7, right: 7),
    width: double.infinity,
    height: 56,
    child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color1),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(11))),
        ),
        child: Text(
          text,
          style: TextStyle(color: color2, fontSize: 18),
        )),
  );
}
