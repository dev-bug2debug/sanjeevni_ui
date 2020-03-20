import 'package:flutter/material.dart';
import 'package:labwebapp/Authentication/lab_authentication.dart';
import 'package:labwebapp/widgets/BackgroundLogin.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  bool obscureText1 = true;
  bool obscureText2 = true;

  //code added by Rana Atul
  //....variable for taking the value of the textfield after click the signup button.....
  String email = '';
  String password = '';
  String confirmpass = '';
  //............

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //--------------------------------Background for Login-------------------------------------
          BackgroundLogin(),
          //-----------------All the Wigdets Visible on the Login Screen except Logo------------------
          Column(
            children: <Widget>[
              //----------------------------Text for Sanjeevni Header-----------------------------------
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(top: 15.0, left: 45.0),
                child: Text(
                  'Sanjeevni',
                  style: TextStyle(
                      letterSpacing: 0.5,
                      fontSize: 60.0,
                      color: Colors.black,
                      fontFamily: 'Abril Fatface',
                      decoration: TextDecoration.none),
                ),
              ),
              //----------------------Space between login and sanjeevni text-------------------------------
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              //----------------------------All the content on login screen---------------------------------
              Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.15,
                    left: MediaQuery.of(context).size.width * 0.60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //----------------------------TextField for E-mail--------------------------------------
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: "Enter Your E-mail",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(27.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(27.0)),
                          labelStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: 0.5,
                            fontFamily: 'Abril Fatface',
                            decoration: TextDecoration.none,
                          ),
                        ),
                        // code added by Rana Atul
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                        cursorColor: Colors.black,
                      ),
                    ),
                    //------------------Space between Email and Password TextFields----------------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //---------------------------TextField for Password-----------------------------------
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: TextFormField(
                        obscureText: obscureText1,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: () {
                              setState(() {
                                obscureText1 = !obscureText1;
                              });
                            },
                            color: Colors.black,
                            tooltip: "Show password",
                          ),
                          labelText: "Enter Your Password",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(27.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(27.0)),
                          labelStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: 0.5,
                            fontFamily: 'Abril Fatface',
                            decoration: TextDecoration.none,
                          ),
                        ),
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                        cursorColor: Colors.black,
                      ),
                    ),
                    //-----------------Space between Password and Confirm Password-----------------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //--------------------TextField for Confirm Password-----------------------------------
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: TextFormField(
                        obscureText: obscureText2,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: () {
                              setState(() {
                                obscureText2 = !obscureText2;
                              });
                            },
                            color: Colors.black,
                            tooltip: "Show password",
                          ),
                          labelText: "Confirm Your Password",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(27.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(27.0)),
                          labelStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: 0.5,
                            fontFamily: 'Abril Fatface',
                            decoration: TextDecoration.none,
                          ),
                        ),
                        onChanged: (val) {
                          setState(() => confirmpass = val);
                        },
                        cursorColor: Colors.black,
                      ),
                    ),
                    //------------------Space between Confirm Password and SignUp Button----------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //--------------------------------SignUp button--------------------------------------
                    MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        // print(email);
                        // print(password);
                        // print(confirmpass);
                        Authentication lab = new Authentication();// This is class which used to send data in database
                        lab.labSignUp(email, password,confirmpass);// This method is in the Authentication class and it send data to Backend
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Abril Fatface',
                            letterSpacing: 0.5),
                      ),
                      minWidth: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ],
                ),
              ),
              //-------------------space between sign in with phone number and footer---------------------
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.28,
              ),
              //----------------------------------------footer--------------------------------------------
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Privacy and Policy',
                        style: TextStyle(
                            color: Color(0xffFFFCFC),
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text(
                        "FAQ's",
                        style: TextStyle(
                            color: Color(0xffFFFCFC),
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text(
                        'Contact us',
                        style: TextStyle(
                            color: Color(0xffFFFCFC),
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text(
                        'About us',
                        style: TextStyle(
                            color: Color(0xffFFFCFC),
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
