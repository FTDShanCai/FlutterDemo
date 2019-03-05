import 'package:flutter_app/util/random_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/info_title.dart';

class MyColumn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyColumnState();
  }
}

class MyColumnState extends State<MyColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Column(
        children: <Widget>[
          MyInfoTitle(
            title: 'Column',
            info: '就是名字一样，列的意思，类似android的线性布局中属性为VERTICAL',
          ),
          SizedBox.fromSize(
            size: Size.fromHeight(50),
          ),
          Container(
            color: getRandomColor(),
            width: 300,
            height: 50,
          ),
          Container(
            color: getRandomColor(),
            width: 250,
            height: 50,
          ),
          Container(
            color: getRandomColor(),
            width: 200,
            height: 50,
          ),
          Container(
            color: getRandomColor(),
            width: 150,
            height: 50,
          ),   Container(
            color: getRandomColor(),
            width: 100,
            height: 50,
          ),
          Container(
            color: getRandomColor(),
            width: 150,
            height: 50,
          ),
          Container(
            color: getRandomColor(),
            width: 200,
            height: 50,
          ),
          Container(
            color: getRandomColor(),
            width: 250,
            height: 50,
          ),
          Container(
            color: getRandomColor(),
            width: 300,
            height: 50,
          )
        ],
      ),
    );
  }
}
