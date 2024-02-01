import 'package:flutter/material.dart';
import 'package:xpense/constants/color_const.dart';

Widget Button({text, onPressed}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10, left: 7, right: 7),
    width: double.infinity,
    height: 56,
    child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(gradientColor1),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(11))),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        )),
  );
}
