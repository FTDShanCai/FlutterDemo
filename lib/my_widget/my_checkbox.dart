import 'package:flutter/material.dart';
import 'package:flutter_app/util/random_color.dart';

class MyCheckBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCheckBoxState();
  }
}

//一排CheckBox
class MyCheckBoxState extends State<MyCheckBox> {
  var bo = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: bo,
          onChanged: (bool) {
            setState(() {
              bo = bool;
            });
          },
          activeColor: getRandomColor(),
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
        Checkbox(
          value: bo,
          onChanged: (bool) {
            setState(() {
              bo = bool;
            });
          },
          activeColor: getRandomColor(),
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
        Checkbox(
          value: bo,
          onChanged: (bool) {
            setState(() {
              bo = bool;
            });
          },
          activeColor: getRandomColor(),
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
        Checkbox(
          value: bo,
          onChanged: (bool) {
            setState(() {
              bo = bool;
            });
          },
          activeColor: getRandomColor(),
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
        Checkbox(
          value: bo,
          onChanged: (bool) {
            setState(() {
              bo = bool;
            });
          },
          activeColor: getRandomColor(),
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
        Checkbox(
          value: bo,
          onChanged: (bool) {
            setState(() {
              bo = bool;
            });
          },
          activeColor: getRandomColor(),
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
        Checkbox(
          value: bo,
          onChanged: (bool) {
            setState(() {
              bo = bool;
            });
          },
          activeColor: getRandomColor(),
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
      ],
    );
  }
}