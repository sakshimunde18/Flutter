//Handling event using Stateful event
import 'package:flutter/material.dart';
class MyWidget7 extends StatefulWidget {
 @override
  State<StatefulWidget> createState() {
    return(MyState());
  }
}
class MyState extends State <MyWidget7>{
  var i=0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Row(
              children: [
                 Text('count is $i'),
                    TextButton(onPressed: (){
                      setState(() {
                        i++;
                      });
                    }, 
                    child: Text('click here')),
              ],),
          appBar: AppBar(
            title:  Text('demo event'),
          )),
    ));
  }
}

 