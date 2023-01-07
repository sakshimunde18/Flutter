//style property of textbutton
import 'package:flutter/material.dart';
class MyWidget9 extends StatefulWidget {
 @override
  State<StatefulWidget> createState() {
    return(MyState());
  }
}

class MyState extends State <MyWidget9>{
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
                        C = Colors.red;
                      });
                    }, child: Text('red')),
          
                    TextButton(onPressed: (){
                      setState(() {
                        C = Colors.yellow;
                      });
                    }, child: Text('Yellow')),
                    

              ],
          ),
          appBar: AppBar(
            title:  Text('demo event'),
          )),
          ));
}
  }

