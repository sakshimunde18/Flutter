//padding control
//Text field control
import 'package:flutter/material.dart';
class MyWidget10 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget10> {
  var fname = "";
  var lname = "";
  var mycontroller1 = TextEditingController();
  var mycontroller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: mycontroller1,
                  decoration: InputDecoration(
                      labelText: 'enter first name',
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: mycontroller2,
                  decoration: InputDecoration(
                      labelText: 'enter last name',
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Text('click here'),
                  onPressed: () {
                    setState(() {
                      fname = mycontroller1.text;
                      lname = mycontroller2.text;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('hello $fname $lname'),
              )
            ],
          ),
          appBar: AppBar(
            title: Text('textfiled'),
          )),
    ));
  }
}
