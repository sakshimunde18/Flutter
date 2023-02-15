//card widget
import 'package:flutter/material.dart';

class MyWidget30 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget30> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text("This is Title"),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: null, child: Text("Edit")),
                  ElevatedButton(onPressed: null, child: Text("Delete"))
                ],
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Card"),
        ),
      ),
    ));
  }
}
