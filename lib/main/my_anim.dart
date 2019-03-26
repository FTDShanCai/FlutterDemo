import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/anim/my_animatedContainer.dart';
import 'package:flutter_app/anim/my_logo.dart';
import 'package:flutter_app/anim/my_custom_anim.dart';

enum AnimS { AnimatedContainer, TWEEN, CustomAnim }

class MyAnim extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAnimState();
  }
}

class MyAnimState extends State<MyAnim> {
  var list = new List<Widget>();

  @override
  void initState() {
    super.initState();
    list
      ..add(itemView(
          'AnimatedContainer', Icons.transform, AnimS.AnimatedContainer));
    list..add(itemView('TWEEN', Icons.track_changes, AnimS.TWEEN));
    list
      ..add(itemView('路由过度Anim', Icons.border_horizontal, AnimS.CustomAnim));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动画'),
      ),
      body: GridView.count(
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        crossAxisCount: 2,
        children: list,
      ),
    );
  }

  //itemView click
  void _itemCLick(AnimS type) {
    switch (type) {
      case AnimS.AnimatedContainer:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyAnimatedContainer();
        }));
        break;
      case AnimS.TWEEN:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyLogo();
        }));
        break;
      case AnimS.CustomAnim:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyCustomAnim();
        }));
        break;
    }
  }

  //初始化 itemView
  Widget itemView(String title, IconData icon, AnimS type) {
    return GestureDetector(
      onTap: () {
        _itemCLick(type);
      },
      child: Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox.fromSize(
              size: Size.fromHeight(20),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(icon, color: Colors.lightBlue),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}
