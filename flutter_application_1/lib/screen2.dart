//MaterialApp
//Scaffold class
import 'package:flutter/material.dart';
class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: const Center(
            child: Text(
              'Hello sakshi',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
          ),
          appBar: AppBar(
            title: const Text('this is title'),
          )),
    ));
  }
}
