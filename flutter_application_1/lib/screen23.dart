//DataTable
//Static+More dynamic
// datatable
// static + more dynamic
import 'package:flutter/material.dart';

class MyWidget23 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class Student {
  String id = "";
  String name = "";
  Student({required this.id, required this.name});
}

List<Student> getStudents() {
  List<Student> students = [];
  Student s1 = new Student(id: "123", name: "qqqq");
  Student s2 = new Student(id: "346", name: "sdg");
  students.add(s1);
  students.add(s2);
  return students;
}

List<DataRow> getRows1() {
  List<DataRow> rows = [];
  List<Student> studs = getStudents();

  for (var i in studs) {
    rows.add(DataRow(cells: [DataCell(Text(i.id)), DataCell(Text(i.name))]));
  }

  // for (int i = 0; i < studs.length; i++) {
  //   rows.add(DataRow(
  //       cells: [DataCell(Text(studs[i].id)), DataCell(Text(studs[i].name))]));
  // }
  return rows;
}

class MyState extends State<MyWidget23> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: DataTable(
          columns: [
            DataColumn(label: Text("ID"), numeric: true),
            DataColumn(label: Text("Name"))
          ],
          rows: getRows1(),
        ),
        appBar: AppBar(
          title: const Text("Drawer"),
        ),
      ),
    ));
  }
}


