import 'package:flutter/material.dart';
import 'package:labwebapp/widgets/BackgroundLogin.dart';
import 'package:labwebapp/widgets/ContentPasswordReset.dart';

class PasswordReset extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PasswordResetState();
  }
}

class PasswordResetState extends State<PasswordReset> {
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
                              ? ContentPasswordReset(percent: 0.10)
                              : ContentPasswordReset(percent: 0.20)
                          : ContentPasswordReset(percent: 0.30)
                      : ContentPasswordReset(percent: 0.40)
                  : ContentPasswordReset(percent: 0.50)
              : ContentPasswordReset(percent: 0.60)
        ],
      ),
    );
  }
}
