import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(19),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Email'),),),
        Padding(padding: EdgeInsets.all(29),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Password'),),),
        Padding(padding:  EdgeInsets.all(19),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), ),),)
      ],
    );
  }
}