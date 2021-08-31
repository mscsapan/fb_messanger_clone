import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:messanger_clone/screens/view/custome_container.dart';
import 'package:messanger_clone/screens/view/text_style.dart';

import '../view/custom_profile_image.dart';

ViewStyle v = ViewStyle();

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            MyProfileImage(),
            Text('Chats', style: v.simpleTextStyle()),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomContainer(icon: FontAwesomeIcons.camera, heightWidth: 50.0),
            SizedBox(width: 20.0),
            CustomContainer(icon: Icons.edit, heightWidth: 50.0),
          ],
        ),
      ],
    );
  }
}
