import 'package:flutter/material.dart';
class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});
  @override
  Widget build(BuildContext context) {
    return(const Center(
    child: Text(
      'sakshi',
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: 30,color:Colors.red,),
    ),
  ));
  }
} 
         