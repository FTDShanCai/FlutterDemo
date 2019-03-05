import 'package:flutter/material.dart';
import 'package:flutter_app/util/random_color.dart';
import 'package:flutter_app/widget/info_title.dart';

class MyIndexedStack extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyIndexedStackState();
  }
}

class MyIndexedStackState extends State<MyIndexedStack> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexedStack'),
      ),
      body: ListView(
        children: <Widget>[
          MyInfoTitle(
            title: 'IndexedStack',
            info: '不知道这个是啥个玩意，反正就是类似帧布局，但是只显示一个 其他都隐藏？',
          ),
          Container(
            alignment: Alignment.center,
            height: 500,
            child: IndexedStack(
              index: _index,
              children: <Widget>[
                CircleAvatar(
                  child: Image.network(
                      'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2229738757,693775443&fm=27&gp=0.jpg'),
                ),
                Container(
                  height: 300,
                  width: 300,
                  color: getRandomColor(),
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: getRandomColor(),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: getRandomColor(),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: FloatingActionButton(
                child: Text('点我一下哈'),
                mini: false,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    borderSide: BorderSide(color: getRandomColor())),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                materialTapTargetSize: MaterialTapTargetSize.padded,
                backgroundColor: getRandomColor(),
                onPressed: () {
                  setState(() {
                    if (_index == 3) {
                      _index = 0;
                    } else {
                      _index++;
                    }
                  });
                }),
          )
        ],
      ),
    );
  }
}
