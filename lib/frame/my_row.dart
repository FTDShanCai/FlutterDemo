import 'package:flutter/material.dart';
import 'package:flutter_app/util/random_color.dart';
import 'package:flutter_app/widget/info_title.dart';

class MyRow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyRowState();
  }
}

class MyRowState extends State<MyRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: Column(
        children: <Widget>[
          MyInfoTitle(
            title: 'Row',
            info: '就是名字一样，行的意思，类似android的先行布局中属性为HORIZONTAL',
          ),
          Row(
            children: <Widget>[
              Container(
                color: getRandomColor(),
                width: 30,
                height: 100,
              ),
              Container(
                color: getRandomColor(),
                width: 50,
                height: 100,
              ),
              Container(
                color: getRandomColor(),
                width: 100,
                height: 100,
              ),
              Container(
                color: getRandomColor(),
                width: 150,
                height: 100,
              ),
            ],
          ),
          SizedBox.fromSize(
            size: Size.fromHeight(50),
          ),
          Container(
            color: getRandomColor(),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                '延伸一哈，如果一行太多显示不下那就GG了直接，所以需要用ListView',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size.fromHeight(50),
          ),
          Scrollbar(
              child: Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  color: getRandomColor(),
                  width: 30,
                ),
                Container(
                  color: getRandomColor(),
                  width: 50,
                ),
                Container(
                  color: getRandomColor(),
                  width: 100,
                ),
                Container(
                  color: getRandomColor(),
                  width: 150,
                ),
                Container(
                  color: getRandomColor(),
                  width: 30,
                ),
                Container(
                  color: getRandomColor(),
                  width: 50,
                ),
                Container(
                  color: getRandomColor(),
                  width: 100,
                ),
                Container(
                  color: getRandomColor(),
                  width: 150,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
