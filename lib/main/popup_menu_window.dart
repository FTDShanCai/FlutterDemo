import 'package:flutter/material.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class PopupWindow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PopupWindowState();
  }
}

class PopupWindowState extends State<PopupWindow> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('PopupWindow'),
      ),
      body: ListView(
        children: <Widget>[getListItem1(),getListItem2()],
      ),
    );
  }

  Widget getListItem1() {
    return ListTile(
      title: Text('这是一个很长的标题'),
      subtitle: Text('点击图标 展开弹窗'),
      trailing: PopupMenuButton(
          onSelected: (i){
            _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('这是一个很长的标题    $i'),));
          },
          icon: Icon(Icons.more_horiz),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.harder,
                  child: Text('Working a lot harder'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.smarter,
                  child: Text('Being a lot smarter'),
                ),
              ]),
    );
  }


  Widget getListItem2() {
    return ListTile(
      title: Text('你好  你点击了'),
      subtitle: Text('带图标'),
      trailing: PopupMenuButton(
            onSelected: (i){
              _scaffoldKey.currentState.showSnackBar(SnackBar(content: FlatButton.icon(icon: Icon(Icons.insert_emoticon),label: Text('你好  你点击了    $i'),),));
            },
          icon: Icon(Icons.more_horiz),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.harder,
              child: ListTile(
                trailing: Icon(Icons.insert_emoticon),
                title: Text('harder'),
              ),
            ),
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.smarter,
              child:  ListTile(
                trailing: Icon(Icons.access_alarm),
                title: Text('smarter'),
              )
            ),
          ]),
    );
  }
}
