//expansionpanellist
//expansionpanel
//static
import 'package:flutter/material.dart';

class MyWidget24 extends StatefulWidget {
  const MyWidget24({super.key});

  @override
  State<StatefulWidget> createState() {
    return (Mystate());
  }
}

class Mystate extends State<MyWidget24> {
  bool flag1 = false;
  bool flag2 = false;
  ExpansionPanelList getPanelList() {
    return (ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          if (panelIndex == 0) {
            flag1 = !isExpanded;
          }
          if (panelIndex == 1) {
            flag2 = !isExpanded;
          }
        });
      },
      children: [
        ExpansionPanel(
            isExpanded: flag1,
            headerBuilder: (context, isExpanded) {
              return (ListTile(
                title: Text('Item1'),
              ));
            },
            body: ListTile(
              title: Text('Ex Item1'),
              subtitle: Text('subtitle1'),
            )),
        ExpansionPanel(
            isExpanded: flag2,
            headerBuilder: (context, isExpanded) {
              return (ListTile(
                title: Text('Item2'),
              ));
            },
            body: ListTile(
              title: Text('Ex Item'),
              subtitle: Text('subtitle2'),
            ))
      ],
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
