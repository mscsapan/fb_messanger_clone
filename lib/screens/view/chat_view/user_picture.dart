import 'package:flutter/material.dart';

class UserPicture extends StatelessWidget {
  final String image;
  final double heightWidth;

  const UserPicture({required this.image, required this.heightWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightWidth,
      width: heightWidth,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: CircleAvatar(
        backgroundColor: Colors.grey,
        radius: heightWidth,
        child: ClipOval(
          child: Image.network(
            image,
            fit: BoxFit.cover,
            width: heightWidth,
            height: heightWidth,
          ),
        ),
      ),
    );
  }
}
