import 'package:finalexam2/Home.dart';
import 'package:finalexam2/in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => out(),
        'output':(context) => Add(),
      },
    ),
  );
}