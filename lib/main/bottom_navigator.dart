import 'package:flutter/material.dart';


class Name extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NameState();
  }
}

class NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text('child'),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  BottomNavigationWidgetState createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<MyBottomNavigationBar> {
  final bottom_color = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = new List();

  @override
  void initState() {
    // TODO: implement initState
    list
      ..add(PageScreen(
        text: 'Home',
      ))
      ..add(PageScreen(
        text: 'Email',
      ))
      ..add(PageScreen(
        text: 'Pages',
      ))
      ..add(PageScreen(
        text: 'AipPlay',
      ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: bottom_color,
                ),
                title: Text('Home', style: TextStyle(color: bottom_color))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color: bottom_color,
                ),
                title: Text('Email', style: TextStyle(color: bottom_color))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color: bottom_color,
                ),
                title: Text('Pages', style: TextStyle(color: bottom_color))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                  color: bottom_color,
                ),
                title: Text('AipPlay', style: TextStyle(color: bottom_color))),
          ]),
    );
  }
}

class PageScreen extends StatelessWidget {
  final String text;

  const PageScreen({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
