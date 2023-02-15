//Routes
//Navigator.push
//named.push
//page2
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen26.dart';
class MyWidget27 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget27> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Routes'),
          ),
          body: Column(
            children: [Builder(builder: (context){
              return(ElevatedButton(child: Text('Previous'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => MyWidget26(),));
              },
              ));
            })],
          )),
    ));
  }
}