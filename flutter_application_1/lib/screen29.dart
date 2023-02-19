//Routes
//Passing arguments to the second screen
//page2
import 'package:flutter/material.dart';
import 'package:flutter_application1/screen28.dart';


class MyWidget29 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget29> {
  @override
  Widget build(BuildContext context) {
    MyArgsValues args = ModalRoute.of(
      context)?.settings.arguments as MyArgsValues;
    
    return (Scaffold(
      body: Column(
        children: [
          Builder(builder: (context) {
            return (ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
              child: Text("Previous 1"),
            ));
          }),
          Text("Args is ${args.fname}")
        ],
      ),
      appBar: AppBar(title: const Text("Argument Routes")),
    ));
  }
}