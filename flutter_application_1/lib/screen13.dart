//radiobutton
import 'package:flutter/material.dart';
class MyWidget13 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}
class MyState extends State<MyWidget13>{
bool? flag1=true;
bool? flag2=true;
String? msg='';
String?gv='male';
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Column(children: [ListTile(title: Text('male'),
          leading: Radio(value: 'male',
          groupValue: gv,
          onChanged:(value){
            setState(() {
              gv=value;
            });
          },
          ),
          ),
          ListTile(title: Text('female'),
          leading: Radio(value: 'female',
          groupValue: gv,
          onChanged: (value){
            setState(() {
              gv=value;
            });
          },
          ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              msg=gv;
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

