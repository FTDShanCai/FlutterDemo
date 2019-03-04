import 'package:flutter/material.dart';
import 'package:flutter_app/util/random_color.dart';

class MyInfoTitle extends StatefulWidget {
  final String title;
  final String info;

  const MyInfoTitle({Key key, this.title, this.info}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyInfoTitleState(this.title, this.info);
  }
}

class MyInfoTitleState extends State<MyInfoTitle> {
  final String title;
  final String info;
  final bg = getRandomColor();

  MyInfoTitleState(this.title, this.info);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 30,
          alignment: Alignment.center,
          color: bg,
          child: Text(
            this.title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
          color: Colors.lightBlue[100],
          child: Text(
            '简介: $info',
            style: TextStyle(color: Colors.black54),
          ),
        )
      ],
    );
  }
}
