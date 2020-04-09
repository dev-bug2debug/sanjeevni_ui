import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class test{

  Map data;
  List testData;

  // this method return a list of tests which is added by kartikey in the firebase
  Future  getData() async{

   // ?  Response response = await post(url, headers: headers, body: json)
    // ! json data = {"type":"get", "test":"*"} for all
    // ! json data = {"type":"get", "test":"*Name"} for all keys
    // ! json data = {"type":"get", "test":"__TEST__NAME__"}

    var json_data = {"type":"get", "test":"*Name"};
    http.Response response= await http.post("http://127.0.0.1:8000/api/tests", body:json_data);

    // * http.Response response= await http.get("http://127.0.0.1:8000/api/tests");


    data=json.decode(response.body);

    // yha jo set state and initstate hai ye us widget me lagana jaha se call karega is 
    // setState(() {    
    //   userData=data["data"];
    // });
    debugPrint(testData.toString());
    return testData.toString();
  }
//  @override
//  void initState(){
//    super.initState();
//    getData();
//  }

 
}