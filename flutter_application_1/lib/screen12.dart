//checkbox
import 'package:flutter/material.dart';
class MyWidget12 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}
class MyState extends State<MyWidget12>{
bool? flag1=true;
bool? flag2=true;
String msg='';
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Column(children: [ListTile(title: Text('c'),
          leading: Checkbox(value: flag1,
          onChanged:(value){
            setState(() {
              flag1=value;
            });
          },
          ),
          ),
          ListTile(title: Text('dart'),
          leading: Checkbox(value: flag2,
          onChanged: (value){
            setState(() {
              flag2=value;
            });
          },
          ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              msg='';
              if(flag1==true){
                msg='c';
              }
              if(flag2==true){
                msg+='dart';
              }
            });
          },
          child: Text('ok')),
          Padding(padding:EdgeInsets.all(20),child: Text('you selected $msg'),)
          ],
          ),
          appBar: AppBar(
            title:  Text('textfiled'),
          )),
    ));
  }
}

