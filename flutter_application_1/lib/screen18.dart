//AlartDialouge
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import'package:fluttertoast/fluttertoast.dart';
class MyWidget18 extends StatefulWidget {
  const MyWidget18({super.key});

  @override
  State<StatefulWidget> createState() {
    return (Mystate());
  }
}

class Mystate extends State<MyWidget18> {
  String? msg = "";
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aleart"),
        ),
        body: Column(
          children: [
            Builder(
              builder: (context) {
                return (ElevatedButton(
                  child: Text("exit"),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return (AlertDialog(
                          title: Text("DO you want to exit"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    msg = 'yes';
                                    Navigator.pop(context);
                                    SystemNavigator.pop();
                                  });
                                },
                                child: Text('yes')),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    msg = 'no';
                                    Navigator.pop(context);
                                  });
                                },
                                child: Text('no')),
                          ],
                        ));
                      },
                    );
                  },
                ));
              },
            ),
            Text('You select $msg'),
          ],
        ),
      ),
    ));
  }
}