//column Widget
import 'package:flutter/material.dart';
class MyWidget5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Column(
              verticalDirection: VerticalDirection.up,
              children: [
                Container(
                  color: Colors.red,
                  child: Text(
                    'this is line1',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              Container(
                color: Colors.green,
                child: Text(
                  'this is line2',
                  style: TextStyle(fontSize: 25),
                ),
              )
              ],),
          appBar: AppBar(
            title:  Text('column demo'),
          )),
    ));
  }
}
