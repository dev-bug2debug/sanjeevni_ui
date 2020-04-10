import 'package:flutter/material.dart';
import 'package:labwebapp/widgets/ContentLogin.dart';

class BackgroundTests extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.16,
            width: MediaQuery.of(context).size.width,
            color: Colors.purple,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.84,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}