import 'package:flutter/material.dart';
import 'package:flutter_app/util/random_color.dart';

class MyRadio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyRadioState();
  }
}

class MyRadioState extends State<MyRadio> {
  int value = 0;
  void method(value) {
    setState(() {
      this.value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Radio(
            value: 1,
            activeColor: getRandomColor(),
            groupValue: value,
            onChanged: (change) {method(change);}),
        Radio(
            value: 2,
            activeColor: getRandomColor(),
            groupValue: value,
            onChanged: (change) {method(change);}),
        Radio(
            value: 3,
            activeColor: getRandomColor(),
            groupValue: value,
            onChanged: (change) {method(change);}),
        Radio(
            value: 4,
            activeColor: getRandomColor(),
            groupValue: value,
            onChanged: (change) {method(change);}),
        Radio(
            value: 3,
            activeColor: getRandomColor(),
            groupValue: value,
            onChanged: (change) {method(change);}),
        Radio(
            value: 4,
            activeColor: getRandomColor(),
            groupValue: value,
            onChanged: (change) {method(change);}),
      ],
    );
  }
}
