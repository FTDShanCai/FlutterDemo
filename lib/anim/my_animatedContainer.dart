import 'package:flutter/material.dart';
import 'package:flutter_app/util/random_color.dart';

class MyAnimatedContainer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAnimatedContainerState();
  }

}

class MyAnimatedContainerState extends State<MyAnimatedContainer>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedContainer'),),
    );
  }

}