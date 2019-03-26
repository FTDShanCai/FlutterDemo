import 'package:flutter/material.dart';
import 'package:flutter_app/util/random_color.dart';
import 'package:flutter/animation.dart';
import 'dart:math' as math;

class MyAnimatedContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAnimatedContainerState();
  }
}

class MyAnimatedContainerState extends State<MyAnimatedContainer>
    with TickerProviderStateMixin {
  final Tween doubleTween = new Tween<double>(begin: -200.0, end: 0.0);
  AnimationController _controller_opacity;
  Animation<double> _animation_opacity;

  AnimationController _controller_movement;
  Animation<EdgeInsets> _animation_movement;

  AnimationController _controller_rotate;
  Animation<double> _animation_rotate;

  AnimationController _controller_color;
  Animation<Color> _animation_color;

  AnimationController _controller_radius;
  Animation<BorderRadius> _animation_radius;

  var width = 200.0;
  var height = 200.0;

  AnimationController getController() {
    return getControllerForTime(Duration(milliseconds: 2000));
  }

  AnimationController getControllerForTime(Duration duration) {
    return new AnimationController(vsync: this, duration: duration);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller_opacity = getController();
    _animation_opacity =
        new Tween(begin: 0.1, end: 1.0).animate(_controller_opacity)
          ..addListener(() {
            setState(() {});
          });

    _controller_movement = getController();
    _animation_movement = new EdgeInsetsTween(
            begin: EdgeInsets.only(top: 0.0), end: EdgeInsets.only(top: 100.0))
        .animate(_controller_movement)
          ..addListener(() {
            setState(() {});
          });

    _controller_rotate = getController();
    _animation_rotate =
        new Tween(begin: 0.0, end: math.pi * 2).animate(_controller_rotate)
          ..addListener(() {
            setState(() {});
          });

    _controller_color = getController();
    _animation_color =
        ColorTween(begin: getRandomColor(), end: getRandomColor())
            .animate(_controller_color)
              ..addListener(() {
                setState(() {});
              });

    _controller_radius = getController();
    _animation_radius = BorderRadiusTween(
            begin: BorderRadius.circular(8.0),
            end: BorderRadius.circular(100.0))
        .animate(_controller_radius)
          ..addListener(() {
            setState(() {});
          });

    _controller_opacity.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller_opacity.dispose();
    _controller_movement.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Column(
        children: <Widget>[
          getSizeLine(),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _controller_opacity.reset();
                    _controller_opacity.forward();
                  });
                },
                child: Text('opacity'),
              ),
              RaisedButton(
                onPressed: () {
                  _controller_movement.reset();
                  _controller_movement.forward();
                },
                child: Text('movement'),
              ),
              RaisedButton(
                onPressed: () {
                  _controller_radius.reset();
                  _controller_radius.forward();
                },
                child: Text('radius'),
              )
            ],
          ),
          getSizeLine(),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  _controller_color.reset();
                  _controller_color.forward();
                },
                child: Text('color'),
              ),
              RaisedButton(
                onPressed: () {
                  _controller_rotate.reset();
                  _controller_rotate.forward();
                },
                child: Text('rotate'),
              ),
              RaisedButton(
                onPressed: () {
                  _controller_rotate.reverse();
                },
                child: Text('reverse'),
              )
            ],
          ),
          getSizeLine(),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text('Staggered'),
              ),
            ],
          ),
          getSizeLine(),
          Transform.rotate(
            angle: _animation_rotate.value,
            child: Opacity(
              opacity: _animation_opacity.value,
              child: Container(
                foregroundDecoration: BoxDecoration(
                    borderRadius: _animation_radius.value,
                    color: _animation_color.value,
                    border: Border.all(width: 5.0, color: Colors.yellow)),
                padding: _animation_movement.value,
                width: width,
                height: height,
                alignment: Alignment.center,
                child: Text(
                  'Anim',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

/**
 * 使用AnimatedBuilder 重构 动画
 */
class MyAnimateBuilder extends AnimatedWidget {
  @override
  Widget build(BuildContext context) {
    Animation<double> animation = listenable;
    return AnimatedBuilder(
        animation: animation,
        builder: (BuildContext ctx, Widget child) {
          return new Center(
            child: Container(
              width: animation.value,
              height: animation.value,
              child: child,
            ),
          );
        });
  }

  MyAnimateBuilder({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);
}
