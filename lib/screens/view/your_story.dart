import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class YourStory extends StatelessWidget {
  const YourStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: 90,
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        child: Center(
          child: FaIcon(FontAwesomeIcons.plus, color: Colors.white),
        ));
  }
}
