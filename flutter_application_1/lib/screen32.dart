//Shared preference
//Page1
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyWidget32 extends StatefulWidget {
  const MyWidget32({super.key});

  @override
  State<MyWidget32> createState() => _MyWidget32State();
}

class _MyWidget32State extends State<MyWidget32> {
  setValues(String x) async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setString("s1", x);
  }

  @override
  Widget build(BuildContext context) {
    String s = "Sakshi";

    return (Scaffold(
      appBar: AppBar(title: Text("Named Parameter")),
      body: Column(
        children: [
          Builder(
            builder: (context) {
              return (ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                  setValues(s);
                },
                child: Text('Next'),
              ));
            },
          )
        ],
      ),
    ));
  }
}
