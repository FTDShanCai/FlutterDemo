import 'dart:math';
import 'package:flutter/material.dart';

Color getRandomColor() {
  Random random = new Random();
  return Color.fromRGBO(
      random.nextInt(255), random.nextInt(255), random.nextInt(255), 1.0);
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
