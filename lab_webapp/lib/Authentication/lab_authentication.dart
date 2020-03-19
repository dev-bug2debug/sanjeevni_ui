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
      debugPrint('2');
    } else {
      print(response.statusCode);
    }
  }

}
