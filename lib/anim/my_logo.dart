import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class MyLogo extends StatefulWidget {
  _LogoAppState createState() => new _LogoAppState();
}

class _LogoAppState extends State<MyLogo> with SingleTickerProviderStateMixin {
  Animation<Color> _animation;
  Animation<double> _animation_double;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));

    _animation =
        new ColorTween(begin: Colors.blue, end: Colors.lightGreenAccent)
            .animate(_controller)
              ..addListener(() {
                setState(() {});
              });
    _animation_double = new Tween(begin: 0.0, end: 300.0).animate(_controller);

    _controller.forward();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logo'),
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          setState(() {
            _controller..reset()..forward();
          });
        },
        child: Container(
          color: _animation.value,
          margin: new EdgeInsets.symmetric(vertical: 10.0),
          height: _animation_double.value,
          width: _animation_double.value,
          child: new FlutterLogo(),
        ),
      )),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
