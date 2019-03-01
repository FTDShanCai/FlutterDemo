import 'package:flutter/material.dart';

//void main() => runApp(new MyApp());

class SearchBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SearchBarState();
  }
}

class SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('开始搜索');
                showSearch(context: context, delegate: SearchBarDelegate());
              })
        ],
      ),
      body: Center(
        child: Text('asd'),
      ),
    );
  }
}

class SearchBarDelegate extends SearchDelegate<String> {

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.access_time),
        onPressed: () {
          query = '19';
        },
      ),
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    //暂时不知道怎么触发-。- 很绝望
    print("buildResults");
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    var suggestionList = query.isEmpty
        ? recentSuggest
        : recentSuggest.where((input) => input.startsWith(query)).toList();

    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) => ListTile(
          title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ])),
        ));
  }

  @override
  void showResults(BuildContext context) {
    //软键盘 按下搜索按钮
    print("showResults");
  }




}

const recentSuggest = [
  "1993",
  "1994",
  "1995",
  "1996",
  "2003",
  "2004",
  "2005",
  "2006"
];