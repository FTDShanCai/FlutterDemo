import 'package:flutter/material.dart';
import 'package:flutter_app/util/random_color.dart';

class MyCardView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyCardViewState();
  }
  
}


class MyCardViewState extends State<MyCardView>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(title: Text('Card'),),
      body: ListView(children: <Widget>[
        Card(
          color: Colors.white,
          elevation: 8.0,
          margin: EdgeInsets.all(10.0),
          clipBehavior: Clip.antiAlias,
          child: Container(
            height: 200,
          ),
        ),
        getSizeLine()
        ,
        Card(
          shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8.0)),borderSide: BorderSide(color: getRandomColor(),width: 5.0)),
          color: getRandomColor(),
          elevation: 8.0,
          margin: EdgeInsets.all(10.0),
          clipBehavior: Clip.antiAlias,
          child: Container(
            height: 200,
          ),
        ),
        getSizeLine(),
        Card(
          color: getRandomColor(),
          elevation: 8.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
          margin: EdgeInsets.all(10.0),
          clipBehavior: Clip.antiAlias,
          child: Container(
            height: 200,
          ),
        )
        ,
        getSizeLine(),
        Card(
          color: getRandomColor(),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
          elevation: 18.0,
          margin: EdgeInsets.all(10.0),
          clipBehavior: Clip.antiAlias,
          child: Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=119600296,925289645&fm=27&gp=0.jpg'),
        )

      ],),
    );
  }
  
}
