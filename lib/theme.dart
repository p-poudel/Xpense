import 'package:flutter/material.dart';

class mytheme extends StatefulWidget {
  const mytheme({super.key});

  @override
  State<mytheme> createState() => _mythemeState();
}

class _mythemeState extends State<mytheme> {
  bool isDarkThemeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 89,
        title: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Text(
            "Theme",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Light",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            Divider(
              height: 25,
              thickness: 0.1,
              color: Colors.grey,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isDarkThemeEnabled = !isDarkThemeEnabled;
                });
              },
              child: Text(
                "Dark",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              height: 25,
              thickness: 0.1,
              color: Colors.grey,
            ),
            Text(
              "Use device Theme",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
