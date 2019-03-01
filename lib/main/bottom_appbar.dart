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

class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidgetState createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
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
      ));
//      ..add(PageScreen(
//        text: 'Pages',
//      ))
//      ..add(PageScreen(
//        text: 'AipPlay',
//      ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return new PageScreen(
                text: 'abc',
              );
            }));
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: list[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlue,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.home, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  }),
              IconButton(
                  icon: Icon(Icons.airport_shuttle, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  }),
            ],
          ),
        ));
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
