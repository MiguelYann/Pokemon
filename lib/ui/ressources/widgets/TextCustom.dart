import 'package:flutter/material.dart';

class TextCustom extends Text {
  String police;
  String text;

  TextCustom(String text, {this.police})
      : super(text, style: TextStyle(fontFamily: police, color: Colors.white));
}
