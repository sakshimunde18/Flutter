//expansionpanellist
//expansionpanel
//Dynamic
import 'package:flutter/material.dart';

class MyWidget25 extends StatefulWidget {
  const MyWidget25({super.key});

  @override
  State<StatefulWidget> createState() {
    return (Mystate());
  }
}

class Item {
  String item = "";
  String subitem = "";
  Item({required this.item, required this.subitem});
}

class Mystate extends State<MyWidget25> {
  List<bool> States = [false, false];
  ExpansionPanelList getPanelList() {
    List<ExpansionPanel> panel = [];
    List<Item> item = [
      Item(item: 'Item11', subitem: 'subitem1'),
      Item(item: 'Item22', subitem: 'subitem2')
    ];
    for (int i = 0; i < item.length; i++) {
      panel.add(ExpansionPanel(
          isExpanded: States[i],
          headerBuilder: (context, isExpanded) {
            return (ListTile(
              title: Text(item[i].item),
            ));
          },
          body: ListTile(
            title: Text(item[i].item),
            subtitle: Text(item[i].subitem),
          )));
    }
    return (ExpansionPanelList(
      children: panel,
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          States[panelIndex] = !isExpanded;
        });
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
            children: [getPanelList()],
          ),
          appBar: AppBar(
            title: Text('Drawer'),
          )),
    ));
  }
}
