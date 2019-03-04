import 'package:flutter/material.dart';
import 'package:flutter_app/util/random_color.dart';

class MyAnimatedSwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAnimatedSwitchState();
  }
}

class MyAnimatedSwitchState extends State<MyAnimatedSwitch> {
  int _cont = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            },
            child: Text('$_cont',key: ValueKey(_cont),style: TextStyle(color: getRandomColor(),fontSize: 140),),
            ),
        RaisedButton.icon(
            onPressed: () {
              setState(() {
                _cont++;
              });
            },
            icon: Icon(Icons.add),
            label: Text('点下试试'))
      ],
    );
  }
}
