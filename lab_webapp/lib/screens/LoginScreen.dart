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
            ? (MediaQuery.of(context).size.width < 1150)
                ? (MediaQuery.of(context).size.width < 800)
                    ? (MediaQuery.of(context).size.width < 502)
                        ? (MediaQuery.of(context).size.width < 400)
                            ? ContentLogin(
                                percent: 0.02,
                              )
                            : ContentLogin(
                                percent: 0.10,
                              )
                        : ContentLogin(percent: 0.25)
                    : ContentLogin(percent: 0.45)
                : ContentLogin(percent: 0.55)
            : ContentLogin(percent: 0.60)
      ],
    );
  }
}
