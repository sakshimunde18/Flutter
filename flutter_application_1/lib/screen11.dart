//addition program
import 'package:flutter/material.dart';
class MyWidget11 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<StatefulWidget> {
  int x = 0;
  int y = 0;
  var z = 0;
  var mycontroller1 = TextEditingController();
  var mycontroller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Addition')),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  controller: mycontroller1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Enter First Number '))),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  controller: mycontroller2,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Enter Second Number '))),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        x = int.parse(mycontroller1.text);
                        y = int.parse(mycontroller2.text);
                        z = x + y;
                      });
                    },
                    child: Text('Result is  $z')))
          ],
        ),
      ),
    ));
  }
}
