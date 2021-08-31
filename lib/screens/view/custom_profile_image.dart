import 'package:flutter/material.dart';

final String myImage =
    'https://images.unsplash.com/photo-1521252659862-eec69941b071?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=560&q=80';

class MyProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double size = 60.0;
    return Container(
      height: size,
      width: size,
      margin: EdgeInsets.all(10),
      child: CircleAvatar(
        radius: size,
        child: ClipOval(
          child: Image.network(myImage,
              fit: BoxFit.cover, height: size, width: size),
        ),
      ),
    );
  }
}
