import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomAnim extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCustomAnimState();
  }
}

class MyCustomAnimState extends State<MyCustomAnim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由动画'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('CupertinoPageRoute'),
            subtitle: Text('侧滑跳转'),
            onTap: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (context) => Jump()));
            },
          ),
          ListTile(
            title: Text('FadeRoute'),
            subtitle: Text('渐入渐出跳转'),
            onTap: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionDuration: Duration(seconds: 1),
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondAnimation) {
                        return new FadeTransition(
                          opacity: animation,
                          child: Jump(),
                        );
                      }));
            },
          ),
          ListTile(
            title: Text('CustomRoute'),
            subtitle: Text('自定义跳转'),
            onTap: () {
              Navigator.push(context, FadeRoute((context) {
                return Jump();
              }));
            },
          ),
        ],
      ),
    );
  }
}

class FadeRoute extends PageRoute {
  final WidgetBuilder builder;

  FadeRoute(this.builder);

  @override
  Color get barrierColor => Colors.yellow;

  @override
  String get barrierLabel => 'barrierLabel';

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return builder(context);
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
//    return FadeTransition(
//      opacity: animation,
//      child: builder(context),
//    );
  return RotationTransition(turns: animation,child: builder(context),);
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 1100);
}

class Jump extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('jump'),
      ),
      body: Center(
        child: Text('跳转界面'),
      ),
    );
  }
}
