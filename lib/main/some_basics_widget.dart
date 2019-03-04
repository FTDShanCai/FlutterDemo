import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_app/util/random_color.dart';
import 'package:flutter_app/my_widget/my_checkbox.dart';
import 'package:flutter_app/my_widget/my_radio.dart';
import 'package:flutter_app/my_widget/my_slider.dart';
import 'package:flutter_app/my_widget/my_switch.dart';
import 'package:flutter_app/my_widget/my_animated_switcher.dart';

class MyBasicsWidgets extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyBasicsWidgetsState();
  }
}

class MyBasicsWidgetsState extends State<MyBasicsWidgets> {
  final list = new List<Widget>();
  final Random random = new Random();
  final GlobalKey<ScaffoldState> _state = GlobalKey<ScaffoldState>();

  void showText(String text) {
    _state.currentState.showSnackBar(SnackBar(
      content: Text(text),
    ));
  }

  @override
  void initState() {
    super.initState();
    list..add(title('Text'))..add(text());
    list..add(title('FlatButton'))..add(flatButton());
    list..add(title('FlatButton.Icon'))..add(flatButtonIcon());
    list..add(title('RaisedButton'))..add(raisedButton());
    list..add(title('IconButton'))..add(iconButton());
    list..add(title('FloatingActionButton'))..add(floatingActionButton());
    list..add(title('ButtonBar'))..add(buttonBar());
    list..add(title('TextField'))..add(textField());
    list..add(title('TextFormField'))..add(textFormField());
    list..add(title('CheckBox'))..add(checkBox());
    list..add(title('Radio'))..add(radio());
    list..add(title('slider'))..add(slider());
    list..add(title('switch'))..add(mySwitch());
    list..add(title('AnimatedSwitcher'))..add(padding(MyAnimatedSwitch()));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _state,
      appBar: AppBar(
        title: Text('常用控件'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          print(index);
          return list[index];
        },
      ),
    );
  }

  //Text
  Widget text() {
    return padding(Text('这是一个Text'));
  }

  //FlatButton
  Widget flatButton() {
    return padding(FlatButton(
      onPressed: () {
        showText('FlatButton');
      },
      child: Text('这是一个FlatButton'),
    ));
  }

  //FlatButton.Icon
  Widget flatButtonIcon() {
    return padding(FlatButton.icon(
        icon: Icon(
          Icons.favorite,
          color: Colors.white,
        ),
        color: getRandomColor(),
        onPressed: () {
          showText('FlatButton.Icon');
        },
        label: Text(
          'FlatButton.Icon 了解一下',
          style: TextStyle(color: Colors.white),
        )));
  }

  //RaiseButton
  Widget raisedButton() {
    return padding(RaisedButton(
      color: getRandomColor(),
      child: Text(
        '这是一个RaiseButton',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        showText('RaiseButton');
      },
      shape: Border.all(color: getRandomColor(), width: 1),
    ));
  }

  //IconButton
  Widget iconButton() {
    return padding(IconButton(
      color: getRandomColor(),
      onPressed: () {
        showText('这是一个IconButton');
      },
      icon: Icon(
        Icons.favorite,
        color: getRandomColor(),
      ),
    ));
  }

  //FloatingActionButton
  Widget floatingActionButton() {
    return padding(FloatingActionButton(
      onPressed: () {
        showText('这是一个FloatingActionButton');
      },
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
      backgroundColor: getRandomColor(),
      foregroundColor: getRandomColor(),
    ));
  }

  //ButtonBar
  Widget buttonBar() {
    return padding(ButtonBar(
      alignment: MainAxisAlignment.start,
      children: <Widget>[
        FlatButton.icon(
            onPressed: () {
              showText('感觉没啥用的控件');
            },
            icon: Icon(Icons.account_circle, color: Colors.white),
            color: getRandomColor(),
            label: Text('ButtonBar1', style: TextStyle(color: Colors.white))),
        FlatButton.icon(
            onPressed: () {
              showText('感觉没啥用的控件');
            },
            icon: Icon(Icons.account_balance, color: Colors.white),
            color: getRandomColor(),
            label: Text('ButtonBar2', style: TextStyle(color: Colors.white))),
      ],
    ));
  }

  //TextField
  Widget textField() {
    return padding(TextField(
      controller: TextEditingController(text: 'controller'),
      decoration: InputDecoration.collapsed(
          hintText: '这是一个TextField',
          fillColor: getRandomColor(),
          filled: false),
      textInputAction: TextInputAction.search,
    ));
  }

  //TextFormField
  Widget textFormField() {
    return padding(TextFormField(
      controller: TextEditingController(text: 'controller'),
      cursorColor: getRandomColor(),
      decoration: InputDecoration(
        icon: Icon(Icons.security, color: getRandomColor()),
        errorText: 'errorText',
        fillColor: getRandomColor(),
        counterText: 'counterText',
        labelText: 'lableText',
        helperText: 'helperText',
        hintText: 'hintText',
        prefixText: 'prefixText',
        suffixText: 'suffixText',
        semanticCounterText: 'semanticCounterText',
      ),
    ));
  }

  //CheckBox
  Widget checkBox() {
    return padding(MyCheckBox());
  }

  //Radio
  Widget radio() {
    return padding(MyRadio());
  }

  //Slider
  Widget slider() {
    return padding(MySlider());
  }

  //Switch
  Widget mySwitch() {
    return padding(MySwitch());
  }
}

Widget padding(Widget child) {
  return Padding(
    child: Center(
      child: child,
    ),
    padding: EdgeInsets.all(10.0),
  );
}

Widget title(String title) {
  return Container(
    color: getRandomColor(),
    child: Padding(
      child: Text(
        title,
        style:
            TextStyle(color: Colors.white, decorationColor: getRandomColor()),
      ),
      padding: EdgeInsets.all(10.0),
    ),
  );
}
