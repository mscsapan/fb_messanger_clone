import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Container pressed..');
      },
      splashColor: Colors.transparent,
      child: Container(
          height: 60.0,
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.grey[300]),
          child: Row(
            children: [
              SizedBox(width: 25.0),
              FaIcon(FontAwesomeIcons.search, color: Colors.grey),
              SizedBox(width: 18.0),
              Text(
                'Search',
                style: TextStyle(fontSize: 22.0, color: Colors.grey),
              ),
            ],
          )),
    );
  }
}
