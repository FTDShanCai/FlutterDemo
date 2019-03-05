import 'package:flutter/material.dart';
import 'package:flutter_app/frame/my_align.dart';
import 'package:flutter_app/frame/my_stack.dart';

enum Frames { Align, Stack, IndexedStack, Row, Column }

class MyFrame extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFrameState();
  }
}

class MyFrameState extends State<MyFrame> {
  var list = new List<Widget>();

  @override
  void initState() {
    super.initState();
    list..add(itemView('Align', Icons.format_align_left, Frames.Align));
    list..add(itemView('Stack', Icons.format_align_justify, Frames.Stack));
    list..add(itemView('IndexedStack', Icons.star, Frames.IndexedStack));
    list..add(itemView('Row', Icons.rowing, Frames.Row));
    list..add(itemView('Column', Icons.account_balance, Frames.Column));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('框架'),
      ),
      body: GridView.count(
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        crossAxisCount: 3,
        children: list,
      ),
    );
  }

  //itemView click
  void _itemCLick(Frames type) {
    switch (type) {
      case Frames.Align:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyAlign();
        }));
        break;
      case Frames.Stack:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyStack();
        }));

        break;
      case Frames.IndexedStack:
        break;
      case Frames.Row:
        break;
      case Frames.Column:
        break;
    }
  }

  //初始化 itemView
  Widget itemView(String title, IconData icon, Frames type) {
    return GestureDetector(
      onTap: () {
        _itemCLick(type);
      },
      child: Center(
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
