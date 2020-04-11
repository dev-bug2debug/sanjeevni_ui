import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:labwebapp/Services/Tests.dart';

class ContentTests extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentTestsState();
  }
}

class ContentTestsState extends State<ContentTests> {
  Test test = Test();
  List<dynamic> testList;
  List<dynamic> selectedTest = [];
  List<dynamic> testAdded = [];
  List<dynamic> testRemoved = [];
  String testName;
  TextEditingController testNameController=TextEditingController();

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Text(
                        'Demo Lab Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Text(
                        'email and contact info',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, left: 10.0),
                      child: Text(
                        'address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, right: 10.0),
                      child: Text(
                        'UID :- 1336459877',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.015,
                      left: MediaQuery.of(context).size.width * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Add new service to your database',
                        style: TextStyle(
                            fontSize: 20.0,
                            decoration: TextDecoration.underline,
                            shadows: [
                              Shadow(
                                  offset: Offset(0.2, -0.2),
                                  blurRadius: 3.0,
                                  color: Color(0x99000000))
                            ]),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.025,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top:
                                    MediaQuery.of(context).size.height * 0.015),
                            width: MediaQuery.of(context).size.width * 0.345,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: Icon(Icons.search),
                                        onPressed: () {},
                                        color: Colors.black,
                                        tooltip: "Click to Search",
                                      ),
                                      labelText: "Search",
                                      border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(27.0)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(27.0)),
                                      labelStyle: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    cursorColor: Colors.black,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.015),
                                  width:
                                      MediaQuery.of(context).size.width * 0.31,
                                  height:
                                      MediaQuery.of(context).size.height * 0.64,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(-0.3, -0.3),
                                            blurRadius: 5.0,
                                            color: Color(0xff000000))
                                      ],
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black)),
                                  child: getAllTest(context),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.06),
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.64,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(-0.3, -0.3),
                                  blurRadius: 5.0,
                                  color: Color(0xff000000))
                            ],
                            color: Colors.white,
                            border: Border.all(color: Colors.black)),
                        child: getSelectedTest(context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.height * 0.05,
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.0,
                                top:
                                    MediaQuery.of(context).size.height * 0.015),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.purple),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: MaterialButton(
                              onPressed: () {
                                testNameController.text='';
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CustomTest();
                                    });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(Icons.add_circle_outline),
                                  Expanded(child: Text('Got something new'))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.12,
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.05,
                                top:
                                    MediaQuery.of(context).size.height * 0.015),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.purple),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: MaterialButton(
                              onPressed: () {
                                test.getData('post', selectedTest, uid: 'UID2');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(Icons.check_circle_outline),
                                  Expanded(child: Text('Confirm'))
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 10.0, right: 40.0, left: 40.0),
                  child: Text('Privacy and Policy',
                      style: TextStyle(fontSize: 16.0, shadows: [
                        Shadow(
                            offset: Offset(0.3, -0.3),
                            blurRadius: 3.0,
                            color: Color(0x99000000))
                      ])),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 10.0, right: 40.0, left: 40.0),
                  child: Text('Contact Us',
                      style: TextStyle(fontSize: 16.0, shadows: [
                        Shadow(
                            offset: Offset(0.3, -0.3),
                            blurRadius: 3.0,
                            color: Color(0x99000000))
                      ])),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 10.0, right: 40.0, left: 40.0),
                  child: Text(
                    'About Us',
                    style: TextStyle(fontSize: 16.0, shadows: [
                      Shadow(
                          offset: Offset(0.3, -0.3),
                          blurRadius: 3.0,
                          color: Color(0x99000000))
                    ]),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getSelectedTest(context) {
    return FutureBuilder(
      future: test.getData('get', '*UID', uid: 'UID2'),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //print(snapshot.data);
          //print(snapshot.data.runtimeType);
          //print(snapshot.data['result'].runtimeType);
          selectedTest = snapshot.data['result'];
//          snapshot.data.forEach((key,value){
//            print(key);
//            print(value);
//          });
          //testList.removeWhere((element) => selectedTest.contains(element));

          selectedTest.addAll(testAdded);
          selectedTest = selectedTest.toSet().toList();
          selectedTest.removeWhere((element) => testRemoved.contains(element));
          selectedTest.sort();
          return ListView.builder(
            itemCount: selectedTest.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(selectedTest[index]),
                trailing: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      //testList.add(testList[index]);
                      if (testAdded.contains(selectedTest[index])) {
                        testAdded.remove(selectedTest[index]);
                      } else {
                        testRemoved.add(selectedTest[index]);
                      }
                    });
                  },
                ),
              );
            },
          );
        }
        return Center(
          child: Container(
              height: 40.0, width: 40.0, child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget getAllTest(context) {
//    List<dynamic> testList;
//    List<String> selectedTest=[];
    return FutureBuilder(
      future: test.getData('get', '*NAMES'),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //print(snapshot.data);
          //print(snapshot.data.runtimeType);
          //print(snapshot.data['result'].runtimeType);
          testList = snapshot.data['result'];
//          snapshot.data.forEach((key,value){
//            print(key);
//            print(value);
//          });
          testList.sort();
          //testList.removeWhere((element) => selectedTest.contains(element));
          return ListView.builder(
            itemCount: testList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(testList[index]),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    setState(() {
                      if (testRemoved.contains(testList[index])) {
                        testRemoved.remove(testList[index]);
                      } else {
                        testAdded.add(testList[index]);
                      }
                      //testList.removeAt(index);
                    });
                  },
                ),
              );
            },
          );
        }
        return Center(
          child: Container(
              height: 40.0, width: 40.0, child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget CustomTest() {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Got Something New!!',
            style: TextStyle(
                fontSize: 20.0,
                shadows: [
                  Shadow(
                      offset: Offset(0.2, -0.2),
                      blurRadius: 3.0,
                      color: Color(0x99000000))
                ]),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02),
          Container(
            width: MediaQuery.of(context).size.width*0.3,
            child: TextFormField(
              controller: testNameController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.edit),
                labelText: "Enter Test Name",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.09,
                margin: EdgeInsets.only(
                    //left: MediaQuery.of(context).size.width * 0.01,
                    top: MediaQuery.of(context).size.height * 0.015),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: BorderRadius.circular(30.0)),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.cancel),
                      Expanded(child: Text('Cancel'))
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.09,
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.01,
                    top: MediaQuery.of(context).size.height * 0.015),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: BorderRadius.circular(30.0)),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      testAdded.add(testNameController.text);
                    });
                    Navigator.pop(context);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.check_circle_outline),
                      Expanded(child: Text('Confirm'))
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
