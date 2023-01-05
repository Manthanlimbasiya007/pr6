import 'package:flutter/material.dart';
import 'package:pr6/homepage.dart';
import 'package:pr6/secondpage.dart';
import 'package:pr6/thirdpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => homepage(),
      'second': (context) => secondpage(),
      'third':(context) => thirdpage(),
    },
  ));
}