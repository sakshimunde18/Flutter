//Shared Preference
//Page 2
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyWidget33 extends StatefulWidget {
  const MyWidget33({super.key});

  @override
  State<MyWidget33> createState() => _MyWidget33State();
}

String? x;

class _MyWidget33State extends State<MyWidget33> {
  getValues() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    x = pref.getString("s1");
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text("Named Parameter")),
      body: Column(
        children: [
          Builder(
            builder: (context) {
              return (ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                  setState(() {
                    getValues();
                  });
                },
                child: Text("Previous"),
              ));
            },
          ),
          Text("$x")
        ],
      ),
    ));
  }
}
