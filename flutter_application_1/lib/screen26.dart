//Routes
//Navigator.push
//named.push
//page1
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen27.dart';

class MyWidget26 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget26> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Routes'),
          ),
          body: Column(
            children: [Builder(builder: (context){
              return(ElevatedButton(child: Text('Next'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => MyWidget27(),));
              },
              ));
            }),
            ],
            
          )),
    ));
  }
}