import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Test {
  Map data;
  List testData;

  // this method return a list of tests which is added by kartikey in the firebase
  //Some changes made by Hiten as per convenience of Listview.builder
  Future getData(type, test, {uid = 'None'}) async {
    // ?  Response response = await post(url, headers: headers, body: json)
    // ! json data = {"type":"get", "test":"*"} for all
    // ! json data = {"type":"get", "test":"*Name"} for all keys
    // ! json data = {"type":"get", "test":"__TEST__NAME__"}

    var jsonData = jsonEncode({"type": type, "test": test, "uid": uid});
    http.Response response =
        await http.post("http://127.0.0.1:8000/api/tests", body: jsonData);

    // * http.Response response= await http.get("http://127.0.0.1:8000/api/tests");

    data = json.decode(response.body);
    // yha jo set state and initstate hai ye us widget me lagana jaha se call karega is
    // setState(() {
    //   userData=data["data"];
    // });
    //debugPrint(data.toString());
    return data;
  }

//  @override
//  void initState(){
//    super.initState();
//    getData();
//  }

//  Future putData(testList, uid) async {
//    var jsonData = jsonEncode({"type": "post", "test": testList, "uid": uid});
//    http.Response response =
//        await http.post("http://127.0.0.1:8000/api/tests", body: jsonData);
//  }
}
