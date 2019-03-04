import 'package:flutter/material.dart';
import 'package:flutter_app/widget/info_title.dart';

class MyAlign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAlignState();
  }
}

class MyAlignState extends State<MyAlign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Align'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            MyInfoTitle(
              title: 'Align',
              info: '不知道这个Align是个什么东西，写一下下试试',
            ),
            align(Alignment.topLeft, 'topLeft'),
            line(),
            align(Alignment.topCenter, 'topCenter'),
            line(),
            align(Alignment.topRight, 'topRight'),
            line(),
            align(Alignment.centerLeft, 'centerLeft'),
            line(),
            align(Alignment.center, 'center'),
            line(),
            align(Alignment.centerRight, 'centerRight'),
            line(),
            align(Alignment.bottomLeft, 'bottomLeft'),
            line(),
            align(Alignment.bottomCenter, 'bottomCenter'),
            line(),
            align(Alignment.bottomRight, 'bottomRight'),
            line(),
          ],
        ));
  }

  Widget align(Alignment type, String text) {
    return Container(
      height: 100.0,
      color: Colors.lightBlue,
      child: Align(
        alignment: type,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget line() {
    return SizedBox.fromSize(
      size: Size.fromHeight(10),
    );
  }
}
