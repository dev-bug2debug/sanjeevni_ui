import 'package:flutter/material.dart';
import 'package:labwebapp/widgets/BackgroundLogin.dart';
import 'package:labwebapp/widgets/ContentForgotPassword.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForgotPasswordState();
  }
}

class ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundLogin(),
          (MediaQuery.of(context).size.width < 1300)
              ? (MediaQuery.of(context).size.width < 969)
                  ? (MediaQuery.of(context).size.width < 775)
                      ? (MediaQuery.of(context).size.width < 646)
                          ? (MediaQuery.of(context).size.width < 554)
                              ? ContentForgotPassword(percent: 0.10)
                              : ContentForgotPassword(percent: 0.20)
                          : ContentForgotPassword(percent: 0.30)
                      : ContentForgotPassword(percent: 0.40)
                  : ContentForgotPassword(percent: 0.50)
              : ContentForgotPassword(percent: 0.60)
        ],
      ),
    );
  }
}
