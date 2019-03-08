import 'package:flutter_app/util/random_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/info_title.dart';


class MyProgressIndicator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyProgressIndicatorState();
  }

}

class MyProgressIndicatorState extends State<MyProgressIndicator>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ProgressIndicator'),),

      body: ListView(
        children: <Widget>[
          MyInfoTitle(title: 'ProgressIndicator',info: '进度条控件，有圆圈和线性的进度条LinearProgressIndicator ； CircularProgressIndicator',),
          getSizeLine(),
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Center(
              child: LinearProgressIndicator(
                value: 0.5,
                semanticsLabel: 'semanticsLabel',
                semanticsValue: 'semanticsValue',
              ),
            ),

          ),
          getSizeLine(),
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey,
                value: 0.5,
                semanticsLabel: 'semanticsLabel',
                semanticsValue: 'semanticsValue',
              ),
            ),

          ),



        ],
      ),

    );
  }

}