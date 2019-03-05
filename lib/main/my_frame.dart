import 'package:flutter/material.dart';
import 'package:flutter_app/frame/my_align.dart';
import 'package:flutter_app/frame/my_stack.dart';
import 'package:flutter_app/frame/my_indexed_stack.dart';
import 'package:flutter_app/frame/my_row.dart';
import 'package:flutter_app/frame/my_column.dart';
import 'package:flutter_app/frame/my_listView.dart';
import 'package:flutter_app/frame/my_refresh_indicator.dart';

enum Frames { Align, Stack, IndexedStack, Row, Column ,ListView,refreshIndicator}

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
    list..add(itemView('ListView', Icons.list, Frames.ListView));
    list..add(itemView('Indicator', Icons.refresh, Frames.refreshIndicator));
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
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyIndexedStack();
        }));
        break;
      case Frames.Row:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyRow();
        }));
        break;
      case Frames.Column:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyColumn();
        }));
        break;
      case Frames.ListView:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyListView();
        }));
        break;
      case Frames.refreshIndicator:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyRefreshIndicator();
        }));
        break;
    }
  }

  //初始化 itemView
  Widget itemView(String title, IconData icon, Frames type) {
    return GestureDetector(
      onTap: () {
        _itemCLick(type);
      },
      child: Container(
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
