import 'package:flutter/material.dart';
import 'package:labwebapp/screens/LoginScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Testing',
    home: Scaffold(
      body: LoginScreen(),
    ),
  ));
}
