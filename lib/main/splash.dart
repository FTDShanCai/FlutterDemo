import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Animation _animation;
  AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 5000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation.addStatusListener((state) {
      if (state == AnimationStatus.completed) {}
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
          'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3194810452,4039969347&fm=26&gp=0.jpg',
          scale: 2.0,
          fit: BoxFit.cover),
    );
  }
}
