import 'package:flutter/material.dart';

PreferredSize customAppBar(
  context,
  title, {
  color = Colors.white,
  textColor = Colors.black,
}) {
  final double width = MediaQuery.of(context).size.width;
  return PreferredSize(
    preferredSize: Size(width, 100),
    child: Container(
      width: width,
      color: color,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          title,
          style: TextStyle(
              color: textColor, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}
