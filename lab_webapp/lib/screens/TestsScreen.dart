import 'package:flutter/material.dart';
import 'package:labwebapp/widgets/BackgroundTests.dart';
import 'package:labwebapp/widgets/ContentTests.dart';

class TestsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestsScreenState();
  }
}

class TestsScreenState extends State<TestsScreen> {
  var items = List<String>.generate(20, (i) => "Item ${i + 1}");
  var items1 = List<String>.generate(0, (index) => 'Items ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundTests(),
          ContentTests()
        ],
      ),
    );
//      Scaffold(
//      body: Container(
//        height: MediaQuery.of(context).size.height*0.8,
//        child: Row(
//          children: <Widget>[
//            Container(
//              width: MediaQuery.of(context).size.width*0.3,
//              height: MediaQuery.of(context).size.height*0.8,
//              child: ListView.builder(
//                  itemCount: items.length==0?0:items.length,
//                  itemBuilder: (context, index) {
//                    return Row(
//                      children: <Widget>[
//                        Text('${items[index]}'),
//                        MaterialButton(
//                          child: Text('Press me'),
//                          onPressed: () {
//                            setState(() {
//                              //print(items[0]);
//                              items1.add(items[index]);
//                              //print(items1);
//                              //print(items[0]);
//                              items.removeAt(index);
//                              //print(items);
//                            });
//                          },
//                        ),
//                      ],
//                      //Text('${items[index]}'),
//                    );
//                  }),
//            ),
//            Container(
//                width: MediaQuery.of(context).size.width*0.3,
//                height: MediaQuery.of(context).size.height*0.8,
//                child: ListView.builder(
//                    itemCount: items1.length==0?0:items1.length,
//                    itemBuilder: (context, index) {
//                      return ListTile(
//                        title: Text('${items1[index]}'),
//                      );
//                    }))
//          ],
//        ),
//      ),
//    );
  }
}
