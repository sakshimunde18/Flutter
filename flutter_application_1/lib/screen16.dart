//slider
import 'package:flutter/material.dart';
class MyWidget16 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget16> {
  double i = 1;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Slider(
                  min: 1.0,
                  max: 100.0,
                  divisions: 10,
                  value: i,
                  onChanged: (value) {
                    setState(() {
                      i = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text('selected value is $i'),
              )
            ],
          ),
          appBar: AppBar(
            title: Text('floating button'),
          )),
    ));
  }
}
