import 'package:flutter/material.dart';
import 'package:flutter_app/util/random_color.dart';

class MySlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MySliderState();
  }
}

class MySliderState extends State<MySlider> {
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Slider(
        value: value,
        label: '当前进度:$value',
        min: 0,
        max: 1000,
        divisions: 1000,
        inactiveColor: Colors.amber,
        activeColor: Colors.pink,
        onChanged: (index) {
          setState(() {
            this.value = index;
          });
        });
  }
}

