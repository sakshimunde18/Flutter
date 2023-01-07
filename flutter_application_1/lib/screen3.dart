//container without box decoration
import 'package:flutter/material.dart';
class MyWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Container(
            //width:100,
            //height:100,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 40),
            padding:  EdgeInsets.all(20),
            child: const Text('Hello world'),
            color: Colors.yellow,
          ),
          appBar: AppBar(
            title: const Text('this is title'),
          )),
    ));
  }
}
