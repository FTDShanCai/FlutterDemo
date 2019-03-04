import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MySwitchState();
  }
}

class MySwitchState extends State<MySwitch> {
  var isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: isOpen,
        onChanged: (value) {
          setState(() {
            this.isOpen = value;
          });
        });
  }
}
