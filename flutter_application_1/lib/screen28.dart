//Routes
//Passing arguments to the second screen
//page1

import 'package:flutter/material.dart';

class MyWidget28 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyArgsValues {
  String? fname;
  MyArgsValues(this.fname);
}

class MyState extends State<MyWidget28> {
  TextEditingController t1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Column(
        children: [
          TextField(
            controller: t1,
          ),
          Builder(builder: (context) {
            return (ElevatedButton(
              onPressed: () {
                var s = t1.text;
                print(s);
                Navigator.pushNamed(context, '/second',
                    arguments: MyArgsValues(s));
              },
              child: Text("Next1"),
            ));
          })
        ],
      ),
      appBar: AppBar(
        title: const Text("Routes With Arguments"),
      ),
    ));
  }
}
