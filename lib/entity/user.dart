import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()

class User {
  final String name;
  final String email;

  User(this.name, this.email);
}