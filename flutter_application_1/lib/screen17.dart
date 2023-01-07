//time picker
import 'package:flutter/material.dart';
class MyWidget17 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget17> {
  DateTime? d1 = DateTime.now();
  TimeOfDay t1 =TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute);
  TimeOfDay? t2;
  String? msg = "";
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Column(
            children: [
              Builder(builder: (context1) {
                return (ElevatedButton(
                    onPressed: () {
                      showTimePicker(context: context1, initialTime: t1)
                          .then((value) {
                        setState(() {
                          t2 = value;
                          msg = t2?.format(context1);
                        });
                      });
                    },
                    child: Text('Select Time')));
              }),
              Builder(
                builder: (context) {
                  return (ElevatedButton(onPressed: () {
                    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2023)).then((value){
                      setState(() {
                        d1=value;
                      });
                    },
                  );
                  },
                  child: Text('Text')));
                },
              ),
              Text("SelectedDate $d1"),
              Text("SelectedTime $msg"),
            ],
          ),
          appBar: AppBar(
            title: Text("Date and Time"),
          )),
    ));
  }
}
