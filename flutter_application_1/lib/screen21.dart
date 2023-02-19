//Drawerclass
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyWidget21 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Mystate());
  }
}

class Mystate extends State<MyWidget21> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: Drawer(child: Builder(
            builder: (context) {
              return (ListView(
                children: [
                  DrawerHeader(
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Text(
                        'Header Information',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                  ListTile(
                    onTap: () {
                      Fluttertoast.showToast(msg: 'option1');
                      Navigator.pop(context);
                    },
                    title: Text('option1'),
                    leading: Icon(Icons.email),
                  ),
                  ListTile(
                    title: Text('option2'),
                    leading: Icon(Icons.exit_to_app),
                  )
                ],
              ));
            },
          )),
          appBar: AppBar(
            title: Text('Drawer'),
          )),
    ));
  }
}
