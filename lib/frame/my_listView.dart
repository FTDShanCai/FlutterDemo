import 'package:flutter_app/util/random_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/info_title.dart';

class MyListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyListViewState();
  }
}

class MyListViewState extends State<MyListView> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  void _snackBar(String text) {
    _key.currentState.showSnackBar(SnackBar(
        content: Text(
      text,
      style: TextStyle(color: Colors.white),
    )));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        children: <Widget>[
          MyInfoTitle(
            title: 'ListView',
            info: '类似android ListView 和 ScrollView，不能解决滑动嵌套问题,还是挺好用的',
          ),
          getSizeLine(),
          lable('ListTitle'),
          ListTile(
            title: Text('这是一个ListTitle'),
            subtitle: Text('subtitle'),
            leading: Icon(
              Icons.headset,
              color: getRandomColor(),
            ),
            onTap: () {
              _snackBar('ListTitle');
            },
          ),
          lable('CheckboxListTitle'),
          MyCheckListTitle(),
          lable('SwitchListTitle'),
          MySwitchListTitle(),
          lable('萌宠'),
          image('http://baiducdn.pig66.com/uploadfile/2017/0511/20170511074941292.jpg'),
          image('http://imgsrc.baidu.com/imgad/pic/item/37d3d539b6003af368cc164d3e2ac65c1038b6ad.jpg'),
          image('http://pic1.win4000.com/wallpaper/2018-01-09/5a5472458e9cb.jpg'),
          image('http://www.goupuzi.com/newatt/Mon_1809/1_174734_cbf674483cba235.jpg'),
          image('http://b-ssl.duitang.com/uploads/item/201406/01/20140601144012_ejNwc.thumb.1000_0.jpeg'),
        ],
      ),
    );
  }

  Widget lable(String text) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      color: Colors.lightBlue,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget image(String url) {
    return Image.network(url,fit: BoxFit.cover,);
  }
}

class MyCheckListTitle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCheckListTitleState();
  }
}

class MyCheckListTitleState extends State<MyCheckListTitle> {
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CheckboxListTile(
      value: _check,
      onChanged: (checked) {
        setState(() {
          _check = checked;
        });
      },
      subtitle: Text('点击试试'),
      title: Text('这是一个CheckBoxListTitle'),
    );
  }
}

class MySwitchListTitle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MySwitchListTitleState();
  }
}

class MySwitchListTitleState extends State<MySwitchListTitle> {
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SwitchListTile(
        title: Text('这是一个SwitchListTitle'),
        subtitle: Text('滑一下老铁'),
        secondary: Icon(Icons.switch_camera),
        value: _check,
        onChanged: (checked) {
          setState(() {
            this._check = checked;
          });
        });
  }
}
