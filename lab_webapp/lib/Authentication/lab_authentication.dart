import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Authentication{

  labSignUp(String email, String password, String confirmpass) async {
    Map data={
    'mail' : email,
    'pass' : password,
    'cpass' : confirmpass
    };

    // Api calling ......note this api is hosted locally
    final response = await http.post('http://127.0.0.1:8000/labSignUp/',body: data);
    if (response.statusCode == 200) {
      debugPrint('succesfull');
    } else {
      print(response.statusCode);
    }
  }
  labSignIn(String email,String password) async{
    Map data={
    'mail' : email,
    'pass' : password,
    };
    // Api call 
    final response = await http.post('http://127.0.0.1:8000/labSignIn/',body: data);
    if (response.statusCode == 200) {
      print("jo bhi page dikhana hai yha se nevigate karo");
    } 
    else if(response.statusCode == 400){
      print("bad request");
    }
    else if(response.statusCode == 403){
        print('forbidden');
    }
    else if(response.statusCode == 500){
        print('internal server error');
    }
    else {
      print("yha pe pop up show kar do ");
    }
    
  }

}