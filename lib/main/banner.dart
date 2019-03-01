import 'package:flutter/material.dart';
import 'dart:math';

class MyBanner extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyBannerState();
  }
}

class MyBannerState extends State<MyBanner> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text('banner')),
      body: Column(
        children: <Widget>[
          ImageBanner(),
          AvatarBanner()
        ],
      ),
    );
  }
}

class ImageBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(size: Size.fromHeight(200.0),
      child: PageView(
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {},
        children: <Widget>[
          initBannerItem(
              'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=947437743,3435950184&fm=26&gp=0.jpg'),
          initBannerItem(
              'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1319855737,1121578594&fm=26&gp=0.jpg'),
          initBannerItem(
              'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2268708333,4054855105&fm=26&gp=0.jpg'),
          initBannerItem(
              'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=172267287,1583459465&fm=26&gp=0.jpg'),
          initBannerItem(
              'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1191108110,3163618940&fm=26&gp=0.jpg'),
        ],
      ),
    );
  }

  Widget initBannerItem(String url) {
    return Image.network(url, fit: BoxFit.cover);
  }
}

class AvatarBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var avatars_1 = new List<IconData>();
    avatars_1.add(Icons.camera);
    avatars_1.add(Icons.camera_alt);
    avatars_1.add(Icons.camera_enhance);
    avatars_1.add(Icons.camera_front);
    avatars_1.add(Icons.camera_roll);
    avatars_1.add(Icons.linked_camera);
    avatars_1.add(Icons.photo_camera);
    avatars_1.add(Icons.switch_camera);

    return SizedBox.fromSize(size: Size.fromHeight(200.0),
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          getAvtarBannerItem(avatars_1),
          getAvtarBannerItem(avatars_1)
        ],
      ),
    );
  }

  Widget getAvtarBannerItem(List<IconData> list) {
    var avtars = new List<Widget>();

    if (list.length > 8) {
      list = list.sublist(0, 8);
    }

    list.forEach((data) {
      avtars.add(getAvtarItem(data));
    });

    return GridView.count(
        scrollDirection: Axis.vertical, crossAxisCount: 4, children: avtars);
  }

  Widget getAvtarItem(IconData data) {
    Random random =new Random();

    return IconButton(
        splashColor: Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1.0),
        color:  Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1.0),
        disabledColor: Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1.0),
        highlightColor: Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1.0),
        iconSize: 48.0,
        icon: Icon(data),
        onPressed: () {});
  }
}
