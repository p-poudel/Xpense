import 'package:flutter/material.dart';

PreferredSize customAppBarBack(
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
        child: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.of(context).pop();
            }, icon: const Icon(Icons.arrow_back)),
            const Spacer(),
            Text(
              title,
              style: TextStyle(
                  color: textColor, fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
          ],
        ),
      ),
    ),
  );
}
