import 'package:flutter/material.dart';

class ContentPasswordReset extends StatefulWidget{

  final double percent;

  ContentPasswordReset({this.percent});

  @override
  State<StatefulWidget> createState() {
    return ContentPasswordResetState();
  }
}

class ContentPasswordResetState extends State<ContentPasswordReset>{

  bool obscureText1 = true;
  bool obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //---------------------------------Sanjeevni text on header------------------------------
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
        //----------------------------Space between email and sanjeevni text--------------------------------
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        //-------------------------------------Content on the right----------------------------------------
        Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black54, width: 3.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * widget.percent,
              right: MediaQuery.of(context).size.width * 0.10),
          child: Column(
            children: <Widget>[
              //--------------------------------------Text Password reset-----------------------------------
              Text(
                'Password Reset',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Abril Fatface',
                    fontSize: 30.0),
              ),
              //-----------------space between password reset text and password textfield---------------------
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              //-------------------------------------Textfield for Password------------------------------------
              Container(
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
                    labelText: "Enter Your New Password",
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
              //-----------------Space between Password and Confirm Password-----------------------
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              //--------------------TextField for Confirm Password-----------------------------------
              Container(
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
                    labelText: "Confirm Your New Password",
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
              //---------------space between confirm password textfield and confirm button--------------
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              //------------------------------------Confirm button---------------------------------------
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Text('Confirm'),
                color: Colors.white,
              )
            ],
          ),
        ),
        //-------------------------------space between content and footer-------------------------------
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        //--------------------------------------------footer-------------------------------------------
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
    );
  }
}