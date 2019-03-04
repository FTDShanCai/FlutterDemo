import 'package:flutter/material.dart';

class KeepAliveView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KeepAliveState();
  }
}

class KeepAliveState extends State<KeepAliveView>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep Alive Demo'),
        bottom: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            controller: _controller,
            tabs: [
              Tab(icon: Icon(Icons.build)),
              Tab(icon: Icon(Icons.email)),
              Tab(icon: Icon(Icons.build)),
            ]),
      ),
      body: TabBarView(controller: _controller, children: [
        PageScreen(text: 'Build'),
        PageScreen(text: 'Email'),
        PageScreen(text: 'BBBB'),
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
      body: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}