//Row Widget
//Text button
//Handling event in Stateless class
import 'package:flutter/material.dart';
class MyWidget6 extends StatelessWidget {
  var i=0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Row(
              children: [
                 Text('count is $i'),
                    TextButton(onPressed: (){
                      i++;
                      print('button clicked $i');
                    }, 
                    child: Text('click here')),
              ],),
          appBar: AppBar(
            title:  Text('demo event'),
          )),
    ));
  }
}
