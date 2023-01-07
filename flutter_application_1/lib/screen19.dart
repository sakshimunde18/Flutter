//Appbar
//fluttertoast
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyWidget19 extends StatefulWidget {
  const MyWidget19({super.key});

  @override
  State<StatefulWidget> createState() {
    return (Mystate());
  }
}

class Mystate extends State<MyWidget19> {
  @override
  Widget build(BuildContext context1) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: null, icon: Icon(Icons.menu)),
        title: Text('demo appbar'),
        actions: [
          IconButton(
              onPressed: () {
                Fluttertoast.showToast(
                    toastLength: Toast.LENGTH_LONG,
                    msg: "Alarm",
                    gravity: ToastGravity.CENTER);
              },
              icon: Icon(Icons.access_alarm)),
          IconButton(onPressed: null, icon: Icon(Icons.accessibility))
        ],
      )),
    ));
  }
}
