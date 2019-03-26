import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

class MyNet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyNetState();
  }
}

class MyNetState extends State<MyNet> {
  String data = '还没有数据';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('net.io'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            child: RaisedButton(
              onPressed: () {
                _getIPAddress();
              },
              child: Text('Get'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(data),
          )
        ],
      ),
    );
  }

  _getIPAddress() async {
    var url = 'http://gank.io/api/today';
    var httpClient = new HttpClient();

    setState(() {
      data = '加载中';
    });

    String result;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.OK) {
        var json = await response.transform(Utf8Decoder()).join();
        var data = JsonDecoder().convert(json);
        result = json;
      } else {
        result =
            'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }

    // If the widget was removed from the tree while the message was in flight,
    // we want to discard the reply rather than calling setState to update our
    // non-existent appearance.
    if (!mounted) return;

    setState(() {
      data = result;
    });
  }
}
