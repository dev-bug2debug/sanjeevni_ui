import 'package:flutter/material.dart';
import 'package:labwebapp/screens/LoginScreen.dart';
import 'package:labwebapp/screens/TestsScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Testing',
    home: Scaffold(
      body: TestsScreen()
    ),
  ));
}
