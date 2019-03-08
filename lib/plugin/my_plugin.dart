import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/util/random_color.dart';

class MyPlugin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPluginState();
  }
}

class MyPluginState extends State<MyPlugin> {
  static const counterPlugin =
      const EventChannel('com.example.flutterapp/goflutter');

  StreamSubscription _subscription = null;
  var _count;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (_subscription == null) {
      _subscription = counterPlugin
          .receiveBroadcastStream()
          .listen(_onEvent, onError: _onError);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('原生跳转Flutter接受页面'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('接受数据页面'),
          ],
        ),
      ),
    );
  }

  void _onEvent(Object event) {
    setState(() {
      _count = event;
      print("ChannelPage: $event");
    });
  }

  void _onError(Object error) {
    setState(() {
      _count = "计时器异常";
      print(error);
    });
  }
}
