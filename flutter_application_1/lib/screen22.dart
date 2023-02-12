//DataTable
//Static
import 'package:flutter/material.dart';
class MyWidget22 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return (Mystate());
  }
}

class Mystate extends State<MyWidget22> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: DataTable(columns: [
            DataColumn(label: Text('Id'), numeric: true),
            DataColumn(label: Text('Name'))
          ], rows: [
            DataRow(cells: [
              DataCell(
                Text('1'),
                onTap: () {},
              ),
              DataCell(Text('abc'))
            ], selected: true),
            DataRow(cells: [DataCell(Text('2')), DataCell(Text('xyz'))])
          ]),
          appBar: AppBar(
            title: Text('Drawer'),
          )),
    ));
  }
}
