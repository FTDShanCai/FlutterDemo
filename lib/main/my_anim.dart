import 'package:flutter/material.dart';
import 'package:flutter_app/anim/my_animatedContainer.dart';
enum AnimS { AnimatedContainer,}

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
    list..add(itemView('AnimatedContainer', Icons.transform, AnimS.AnimatedContainer));
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
