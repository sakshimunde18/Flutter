//ButtonNavigationBar
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyWidget20 extends StatefulWidget {
  const MyWidget20({super.key});

  @override
  State<StatefulWidget> createState() {
    return (Mystate());
  }
}

class Mystate extends State<MyWidget20> {
  @override
  Widget build(BuildContext context1) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              Fluttertoast.showToast(msg: "you selected $value");
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance), label: "one"),
              BottomNavigationBarItem(icon: Icon(Icons.backspace), label: "two")
            ]),
        appBar: AppBar(
          title: Text("BottomNavigationBar"),
        ),
      ),
    ));
  }
}
