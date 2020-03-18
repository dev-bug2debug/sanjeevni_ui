import 'package:flutter/material.dart';
import 'package:labwebapp/screens/SignUpScreen.dart';
import 'package:labwebapp/widgets/BackgroundLogin.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //-----------------Background for Login-------------------
        BackgroundLogin(),
        //-----------------All the Wigdets Visible on the Login Screen except Logo--------------
        ListView(
          children: <Widget>[
            //--------------Text for Sanjeevni Header------------------------------
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
            //------------Space between login and sanjeevni text-------------------
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            Container(
              margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.15,
                  left: MediaQuery.of(context).size.width * 0.60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //-----------TextField for E-mail--------------------------------------
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
                      cursorColor: Colors.black,
                    ),
                  ),
                  //-----------Space between Email and Password TextFields-------------------
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  //-----------TexrField for Password-----------------------------------
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: TextFormField(
                      obscureText: obscureText,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
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
                      cursorColor: Colors.black,
                    ),
                  ),
                  //------------------Remember me checkBox and Forgot password----------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //------------------Remember me checkBox--------------------------
                      Row(
                        children: <Widget>[
                          Checkbox(
                            value: rememberMe,
                            onChanged: (bool val) {
                              setState(() {
                                rememberMe = val;
                              });
                            },
                            checkColor: Colors.black,
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(
                                fontFamily: 'Roboto', letterSpacing: 0.5),
                          ),
                        ],
                      ),
                      //------------------Text for Forgot Password--------------------------
                      GestureDetector(
                        child: Text('Forgot Password?',
                            style: TextStyle(
                                fontFamily: 'Roboto', letterSpacing: 0.5)),
                        onTap: () {},
                      ),
                    ],
                  ),
                  //------------------Login Button--------------------------
                  MaterialButton(
                    color: Colors.white,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Abril Fatface',
                          letterSpacing: 0.5),
                    ),
                    minWidth: MediaQuery.of(context).size.width * 0.1,
                  ),
                  //------------------SignUp button--------------------------
                  MaterialButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SignUpScreen()));
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
                  //---------------Space between sign up and 'or' text----------------
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  //----------------'or' text---------------------------------
                  Text(
                    'Or',
                    style: TextStyle(
                        fontFamily: 'Abril Fatface',
                        color: Colors.white,
                        fontSize: 18.0),
                  ),
                  //----------space between 'or' text and sign in with google button------------
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  //---------------Sign in with google button-------------------------
                  MaterialButton(
                    height: MediaQuery.of(context).size.height * 0.06,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: AssetImage('asset/images/google_logo.png'),
                          height: 30.0,
                          width: 40.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Sign in with Google',
                            style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Abril Fatface',
                                letterSpacing: 0.5),
                          ),
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                  //------space between sign in with google button and sign in with phone number button-------
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  //-----------sign in with phone number button---------------------
                  MaterialButton(
                    height: MediaQuery.of(context).size.height * 0.06,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.phone),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Sign in with Phone number',
                            style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Abril Fatface',
                                letterSpacing: 0.5),
                          ),
                        )
                      ],
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            //-------------space between sign in with phone number and footer-----------------
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            //------------------------------footer--------------------------------------------
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
    );
  }
}
