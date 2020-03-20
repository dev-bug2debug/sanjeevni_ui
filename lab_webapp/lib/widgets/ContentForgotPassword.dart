import 'package:flutter/material.dart';

class ContentForgotPassword extends StatefulWidget{

  final double percent;

  ContentForgotPassword({this.percent});

  @override
  State<StatefulWidget> createState() {
    return ContentForgotPasswordState();
  }
}

class ContentForgotPasswordState extends State<ContentForgotPassword>{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //-------------------------------Text for Sanjeevni Header------------------------------------------
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
        //----------------------------Space between right content and sanjeevni text--------------------------------
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        //----------------------------------all the content on the right------------------------------------
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
              //------------------------------password recovery text----------------------------------
              Text(
                'Password Recovery',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Abril Fatface',
                    fontSize: 30.0),
              ),
              //--------------space between password recovery text and email textfield----------------
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              //----------------------------TextField for E-mail--------------------------------------
              Container(
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
              //------------------------------------send OTP button----------------------------------
              Align(
                alignment: Alignment.centerRight,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () {},
                  child: Text('Send OTP'),
                  color: Colors.white,
                ),
              ),
              //-------------------space between send OTP button and otp textfield-------------------
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              //----------------------------TextField for OTP--------------------------------------
              Container(
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Enter Your OTP",
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
              //------------------space between OTP textfield and confirm button---------------------
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              //-----------------------------------confirm button--------------------------------------
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
        //----------------------------space between right content and footer-----------------------------
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.12,
        ),
        //-------------------------------------------footer--------------------------------------------
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