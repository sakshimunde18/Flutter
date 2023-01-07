//Handling event using Statefull event
//with two buttons
import 'package:flutter/material.dart';
class MyWidget8 extends StatefulWidget {
 @override
  State<StatefulWidget> createState() {
    return(MyState());
  }
}
class MyState extends State <MyWidget8>{
  var i=0;
  Color C=Colors.red;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Row(
              children: [
                Text('hello',style: TextStyle(backgroundColor: C),),
                 Text('world'),
                    TextButton(onPressed: (){
                      setState(() {
                        C=Colors.green;
                      });
                    }, 
                    child: Text('green')),
                    TextButton(onPressed: (){
                      setState(() {
                        C=Colors.yellow;
                      });
                    }, 
                    child: Text('yellow')),
              ],),
          appBar: AppBar(
            title:  Text('demo event'),
          )),
    ));
  }
}
