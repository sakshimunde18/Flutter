//DataTable
//Static+More dynamic
import 'package:flutter/material.dart';

class Item {
  String item = '';
  String subitem = '';
  Item({required this.item, required this.subitem});
}

class MyWidget23 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget23> {
  List<bool> State = [false, false];
  ExpansionPanelList getPanelList() {
    List<ExpansionPanel> panel = [];
    List<Item> item = [
      Item(item: 'Item1', subitem: 'Subitem1'),
      Item(item: 'Item2', subitem: 'Subitem2')
    ];
    for (int i = 0; i < item.length; i++) {
      panel.add(ExpansionPanel(
          isExpanded: State[i],
          headerBuilder: (context, isExpanded) {
            return (ListTile(
              title: Text(item[i].item)
            ));
          },
          body: ListTile(
            title: Text(item[i].item),
            subtitle: Text(item[i].subitem)
          )));
    }
return (ExpansionPanelList(
      children: panel,
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          State[panelIndex] = !isExpanded;
        });
      }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dynamic')),
        body: Column(
          children: [getPanelList()]
        ),
      ),
    ));
  }
}