import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserStory extends StatelessWidget {
  final String storyImage;
  final String profileImage;
  final int? position;
  UserStory(
      {required this.storyImage, required this.profileImage, this.position});
  double conSize = 80.0;
  double subConSize = 76.0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: double.infinity - 10.0,
              width: 200.0,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.network(storyImage, fit: BoxFit.cover)),
            )),
        Positioned(
            top: position == 0 ? 20.0 : 8.0,
            left: position == 0 ? 35 : 18.0,
            child: position == 0
                ? Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.8)),
                    child: Center(
                      child: FaIcon(FontAwesomeIcons.plus,
                          size: 26, color: Colors.white),
                    ),
                  )
                : Container(
                    height: conSize,
                    width: conSize,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 3.0),
                        shape: BoxShape.circle),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Container(
                        height: subConSize,
                        width: subConSize,
                        child: CircleAvatar(
                          radius: subConSize,
                          child: ClipOval(
                            child: Image.network(profileImage,
                                fit: BoxFit.cover,
                                height: subConSize,
                                width: subConSize),
                          ),
                        ),
                      ),
                    ),
                  )),
      ],
    );
  }
}
