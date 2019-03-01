import 'package:flutter/material.dart';

class MyPlaceHolder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyPlaceHolderState();
  }
}

class MyPlaceHolderState extends State<MyPlaceHolder> {
  final GlobalKey<ScaffoldState> _ScaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _ScaffoldState,
      appBar: AppBar(
        title: FlatButton.icon(
          icon: Icon(
            Icons.accessibility,
            color: Colors.white,
          ),
          label: Text(
            'placeHolder(占位符) ',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 150,
          height: 150,
          child: Placeholder(
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
