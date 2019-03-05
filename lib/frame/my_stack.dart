import 'package:flutter/material.dart';
import 'package:flutter_app/widget/info_title.dart';
import 'package:flutter_app/util/random_color.dart';

class MyStack extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyStackState();
  }
}

class MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          MyInfoTitle(
            title: 'Stack',
            info: '类似于帧布局，层级覆盖，后加入的在最上层。',
          ),
          Container(
            alignment: Alignment.center,
            height: 300,
            child: Stack(
              children: <Widget>[
                Container(
                  color: getRandomColor(),
                  width: 250,
                  height: 250,
                ),
                Container(
                  color: getRandomColor(),
                  width: 200,
                  height: 200,
                ),
                Container(
                  color: getRandomColor(),
                  width: 100,
                  height: 100,
                )
                ,
                Container(
                  color: getRandomColor(),
                  width: 30,
                  height: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
