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
  List<String> selectedTest = [];

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
                              onPressed: () {},
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
                              onPressed: () {},
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
                selectedTest.removeAt(index);
              });
            },
          ),
        );
      },
    );
  }

  Widget getAllTest(context) {
//    List<dynamic> testList;
//    List<String> selectedTest=[];
    return FutureBuilder(
      future: test.getData(),
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
                      selectedTest.add(testList[index]);
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
}
