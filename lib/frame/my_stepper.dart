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
  int _current = 0;

  @override
  void initState() {
    super.initState();
    list = List<Step>.generate(10, (index) {
      return getStep(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper'),
      ),
      body: Stepper(
        steps: list,
        currentStep: _current,
        onStepCancel: () {

        },
        onStepContinue: (){

        },
        onStepTapped: (index){
          setState(() {
            _current=index;
          });
        },

      ),
    );
  }

  Step getStep(int i) {
    return Step(
      state: StepState.indexed,
        title: Text('第$i步'),
        content: Text('第$i步，你要做xxxxxxxx'),
        isActive: true,
        subtitle: Text('点击查看第$i步'),
        );
  }
}

