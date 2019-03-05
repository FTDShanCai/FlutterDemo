import 'dart:math';
import 'package:flutter/material.dart';

Color getRandomColor() {
  Random random = new Random();
  return Color.fromRGBO(
      random.nextInt(255), random.nextInt(255), random.nextInt(255), 1.0);
}

Icon getRandomIcon() {
  Random random = new Random();
  var  list  =[Icons.account_balance,Icons.add,Icons.account_circle,Icons.account_balance_wallet,Icons.favorite,Icons.face,Icons.image,Icons.info,Icons.insert_emoticon
  ,Icons.image_aspect_ratio,Icons.import_contacts,Icons.import_export,Icons.important_devices,Icons.inbox
  ];
  IconData iconData = list[random.nextInt(list.length)];
  return Icon(
    iconData,
    color: getRandomColor(),
  );
}

Widget getSizeLine() {
  return SizedBox.fromSize(
    size: Size.fromHeight(20),
  );
}

Widget getSizeLineForHeight(double lineHeight) {
  return SizedBox.fromSize(
    size: Size.fromHeight(lineHeight),
  );
}
