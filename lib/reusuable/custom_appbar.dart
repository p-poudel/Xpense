import 'package:flutter/material.dart';

PreferredSize CustomAppBar(context, title){
  final double width = MediaQuery.of(context).size.width;
  return PreferredSize(preferredSize: Size(width, 100),child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Center(child: Text(title, style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),),
  ),);
}