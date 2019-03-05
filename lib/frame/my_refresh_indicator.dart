import 'package:flutter/material.dart';
import 'package:flutter_app/util/random_color.dart';
import 'dart:async';
import 'dart:math';


class MyRefreshIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyRefreshIndicatorState();
  }
}

class MyRefreshIndicatorState extends State<MyRefreshIndicator> {
  var listData = List<String>.generate(30, (i) => "CL $i");
  Future<Null> _refresh() async {
    await Future.delayed(Duration(seconds: 2),(){
      setState(() {
        Random random = new Random();
        listData = List<String>.generate(random.nextInt(50), (i) => "CL $i");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget listView = new ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
      return ListTile(title: Text('index : $index'),trailing: getRandomIcon(),);
    });

    return Scaffold(
      appBar: AppBar(title: Text('RefreshIndicator(下拉试试)'),),
      body: RefreshIndicator(child: listView, onRefresh: _refresh,color: getRandomColor(),),
    );
  }
}
