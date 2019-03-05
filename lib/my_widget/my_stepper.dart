import 'package:flutter/material.dart';
import 'package:flutter_app/util/random_color.dart';

class MyStepper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyStepperState();
  }
}

class MyStepperState extends State<MyStepper> {
  var list = new List<Step>();

  @override
  void initState() {
    super.initState();
    list= List<Step>.generate(10, (index){
      return getStep(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stepper(steps: list);
  }

  Step getStep(int i) {
    return Step(title: Text('这是一个Title$i'), content: Text('这是一个Content'));
  }
}
