import 'package:flutter/material.dart';
import 'dart:convert';

class MyIo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyIoState();
  }
}

class MyIoState extends State<MyIo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('IO'),
      ),
    );
  }


  void create(){
    Future.delayed(new Duration(seconds: 2),(){
      return "This is data";
    }).then((data){
      print(300);
    });

  }

}

