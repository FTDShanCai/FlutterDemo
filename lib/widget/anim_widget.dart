import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class MyAnimWidget extends AnimatedWidget {
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return new Center(
      child: new Container(
        width: animation.value,
        height: animation.value,
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: new FlutterLogo(),
      ),
    );
  }

  MyAnimWidget({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);
}
