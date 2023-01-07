//container with box decoration
import 'package:flutter/material.dart';
class MyWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Container(
            alignment: Alignment.center,
           decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),
           child: Text('hello world'),
          ),
          appBar: AppBar(
            title: Text('this is title'),
          )),
    ));
  }
}
