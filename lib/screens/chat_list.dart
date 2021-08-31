import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:messanger_clone/model/chat_model.dart';
import 'package:messanger_clone/screens/conversation.dart';
import 'package:messanger_clone/screens/view/active_status.dart';
import 'package:messanger_clone/screens/view/chat_view/missed_call.dart';
import 'package:messanger_clone/screens/view/chat_view/unseen_incator.dart';
import 'package:messanger_clone/screens/view/chat_view/unseen_messege.dart';
import 'package:messanger_clone/screens/view/chat_view/user_picture.dart';

class ChatList extends StatelessWidget {
  void chatFunction(BuildContext context, int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Conversation(
            name: users[index].chatListNames[index],
            image: users[index].chatListImages[index],
          ),
        ));
    //print(users[index].chatListNames[index]);
  }

  titleStyleBold() {
    return TextStyle(
        fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold);
  }

  titleStyleNormal() {
    return TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
    );
  }

  subTitleStyleBold() {
    return TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
    );
  }

  subTitleStyleNormal() {
    return TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.normal,
    );
  }

  @override
  Widget build(BuildContext context) {
    double radius = 80.0;
    return Container(
      height: MediaQuery.of(context).size.height - 180,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
          itemCount: users.length,
          //shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            ChatModel model = users[index];
            return Container(
              margin: EdgeInsets.symmetric(vertical: 6.0),
              child: GestureDetector(
                onTap: () => chatFunction(context, index),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        model.active == true
                            ? WithStoryActiveStatus(
                                image: users[index].chatListImages[index],
                                heightWidth: radius)
                            : UserPicture(
                                image: users[index].chatListImages[index],
                                heightWidth: radius,
                              ),
                        SizedBox(width: 14.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(model.chatListNames[index],
                                style: model.unseenMessage == true
                                    ? titleStyleBold()
                                    : titleStyleNormal()),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                model.missedCall == true
                                    ? MissedCall()
                                    : unseenMessage(model),
                                Container(
                                  height: 4.0,
                                  width: 4.0,
                                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                ),
                                Text(model.minutes,
                                    style: model.unseenMessage == true
                                        ? subTitleStyleBold()
                                        : subTitleStyleNormal())
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        model.missedCall == true
                            ? Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.add_call,
                                        color: Colors.red)))
                            : Container(),
                        SizedBox(width: 30.0),
                        model.sendByMe != true
                            ? Container(
                                child: FaIcon(FontAwesomeIcons.checkCircle,
                                    color: Colors.grey),
                              )
                            : model.unseenMessage == true
                                ? UnSeenIndicatorDot()
                                : UnSeenIndicatorImage(
                                    seenImage: model.chatListImages[index])
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
