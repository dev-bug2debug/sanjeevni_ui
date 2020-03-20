import 'package:flutter/material.dart';
import 'package:labwebapp/widgets/BackgroundLogin.dart';
import 'package:labwebapp/widgets/ContentLogin.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  bool rememberMe = false;
  double percent = 0.60;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //-----------------Background for Login-------------------
        BackgroundLogin(),
        //-----------------All the Wigdets Visible on the Login Screen except Logo--------------
        (MediaQuery.of(context).size.width < 1300)
            ? (MediaQuery.of(context).size.width < 969)
                ? (MediaQuery.of(context).size.width < 775)
                    ? (MediaQuery.of(context).size.width < 646)
                        ? (MediaQuery.of(context).size.width < 554)
                            ? ContentLogin(percent: 0.10)
                            : ContentLogin(percent: 0.20)
                        : ContentLogin(percent: 0.30)
                    : ContentLogin(percent: 0.40)
                : ContentLogin(percent: 0.50)
            : ContentLogin(percent: 0.60)
      ],
    );
  }
}
