import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ViewStyle {
  simpleTextStyle() {
    return TextStyle(
        fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black);
  }

  userTextStyle() => TextStyle(
      fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold);
}
