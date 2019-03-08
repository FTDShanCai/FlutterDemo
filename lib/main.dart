import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/main/bottom_appbar.dart';
import 'package:flutter_app/main/searchbar.dart';
import 'package:flutter_app/main/bottom_navigator.dart';
import 'package:flutter_app/main/splash.dart';
import 'package:flutter_app/main/tabbar.dart';
import 'package:flutter_app/main/banner.dart';
import 'package:flutter_app/main/popup_menu_window.dart';
import 'package:flutter_app/main/my_placeholder.dart';
import 'package:flutter_app/main/some_basics_widget.dart';
import 'package:flutter_app/main/my_frame.dart';
import 'package:flutter_app/main/my_anim.dart';

enum MyWidgets {
  some_basics_widget,
  bottom_appbar,
  bottom_navigator,
  search_bar,
  splash,
  tab_bar,
  banner,
  popup_menu,
  place_holder,
  my_frame,
  my_anim,
  interactive
}

void main() => runApp(new MyApp());
const jumpPlugin = const MethodChannel('com.example.flutterapp/plugin');

Future<Null> _jumpToNative() async {
  Map<String, String> map = { "flutter": "这是一条来自flutter的参数" };
  String result = await jumpPlugin.invokeMethod('oneAct',map);
  print(result);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'app',
      home: WidgetList(),
    );
  }
}

class WidgetList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WidgetListState();
  }
}

class WidgetListState extends State<WidgetList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[Icon(Icons.apps), Text('WidgetList')],
        ),
      ),
      body: ListView(
        children: <Widget>[
          listItemBuild('some_basics_widget', '基础控件', Icons.unfold_more,
              MyWidgets.some_basics_widget),
          listItemBuild('frames', '基础绘制框架', null, MyWidgets.my_frame),
          listItemBuild('Anim', '动画', null, MyWidgets.my_anim),
          listItemBuild('bottom_appbar', 'FloatingActionButton 和底部的应用', null,
              MyWidgets.bottom_appbar),
          listItemBuild('bottom_navigator', 'Material design 风格bottombar', null,
              MyWidgets.bottom_navigator),
          listItemBuild(
              'search_bar', '头部搜索', Icons.search, MyWidgets.search_bar),
          listItemBuild('splash', '启动图效果', null, MyWidgets.splash),
          listItemBuild(
              'tab_bar', '一个简单tab  用的keepAlive 保活页面', null, MyWidgets.tab_bar),
          listItemBuild('banner', '轮播图', null, MyWidgets.banner),
          listItemBuild(
              'popup_menu', '就是popWindow弹出框', null, MyWidgets.popup_menu),
          listItemBuild('placeholder', '占位符', null, MyWidgets.place_holder),
          listItemBuild('interactive', '与原生的交互', null, MyWidgets.interactive)
        ],
      ),
    );
  }

  Widget listItemBuild(
      String name, String desc, IconData icon, MyWidgets _type) {
    return ListTile(
        title: Text(name),
        subtitle: Text(desc),
        trailing: (icon == null) ? null : Icon(icon),
        onTap: () {
          onItemTap(_type);
        });
  }

  void onItemTap(MyWidgets _type) {
    switch (_type) {
      case MyWidgets.bottom_appbar:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BottomNavigationWidget()));
        break;
      case MyWidgets.bottom_navigator:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MyBottomNavigationBar()));
        break;
      case MyWidgets.search_bar:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SearchBar()));
        break;
      case MyWidgets.splash:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SplashScreen()));
        break;
      case MyWidgets.tab_bar:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => KeepAliveView()));
        break;
      case MyWidgets.banner:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyBanner()));
        break;
      case MyWidgets.popup_menu:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PopupWindow()));
        break;
      case MyWidgets.place_holder:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyPlaceHolder()));
        break;
      case MyWidgets.some_basics_widget:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MyBasicsWidgets()));
        break;
      case MyWidgets.my_frame:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyFrame()));
        break;
      case MyWidgets.my_anim:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyAnim()));
        break;
      case MyWidgets.interactive:
        _jumpToNative();
        break;
    }
  }
}
