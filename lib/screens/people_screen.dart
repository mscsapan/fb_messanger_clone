import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:messanger_clone/data/user_images.dart';
import 'package:messanger_clone/model/chat_model.dart';
import 'package:messanger_clone/screens/user_story.dart';
import 'package:messanger_clone/screens/view/active_status.dart';
import 'package:messanger_clone/screens/view/app_bar.dart';
import 'package:messanger_clone/screens/view/custom_profile_image.dart';
import 'package:messanger_clone/screens/view/custome_container.dart';
import 'package:messanger_clone/screens/view/search.dart';

class PeopleScreen extends StatelessWidget {
  double imageSize = 90.0;
  ChatModel? model;
  userNameStyle() => TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w800,
      );
  peopleStyle() => TextStyle(
      fontSize: 26.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.4);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [MyProfileImage(), Text('People', style: peopleStyle())],
          ),
          CustomContainer(
              icon: FontAwesomeIcons.userPlus, size: 22, color: Colors.black)
        ],
      )),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              margin: EdgeInsets.only(bottom: 10.0),
              child: Search(),
            ),
            Container(
              height: screenHeight * 0.25,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: myDay.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 10, right: 5),
                  itemBuilder: (context, index) {
                    return UserStory(
                        position: index,
                        storyImage: myDay[index],
                        profileImage: usersImages[index]);
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    ChatModel model = users[index];
                    return model.active == true
                        ? Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    WithStoryActiveStatus(
                                        image: model.chatListImages[index],
                                        heightWidth: imageSize),
                                    Text(model.chatListNames[index],
                                        style: userNameStyle())
                                  ]),
                                  CustomContainer(
                                      icon: FontAwesomeIcons.solidHandRock,
                                      size: 26)
                                ]))
                        : Container();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
