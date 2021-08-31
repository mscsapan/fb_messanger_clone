import 'package:flutter/material.dart';
import 'package:messanger_clone/model/top_model.dart';
import 'package:messanger_clone/screens/view/your_story.dart';

import 'active_indicator.dart';

class TopView extends StatelessWidget {
  final double conSize = 85.0;
  final double radius = 80.0;
  final double conSize2 = 90.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: topBarMenu.length,
          scrollDirection: Axis.horizontal,
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            Top topMenu = topBarMenu[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                index == 0
                    ? YourStory()
                    : topMenu.story == true
                        ? Stack(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                      height: conSize,
                                      width: conSize,
                                      margin: EdgeInsets.only(right: 5.0),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                      child: Container(
                                          height: radius,
                                          width: radius,
                                          padding: EdgeInsets.all(5.0),
                                          child: CircleAvatar(
                                              radius: radius,
                                              backgroundColor: Colors.grey,
                                              child: ClipOval(
                                                  child: topMenu.active == true
                                                      ? Container(
                                                          height: radius,
                                                          width: radius,
                                                          child: CircleAvatar(
                                                              radius: radius,
                                                              child: ClipOval(
                                                                  child: Image.network(
                                                                      topMenu
                                                                          .image,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      height:
                                                                          radius,
                                                                      width:
                                                                          radius))))
                                                      : Image.network(
                                                          topMenu.image,
                                                          fit: BoxFit.cover,
                                                          height: radius,
                                                          width: radius)))))),
                              topMenu.active == true
                                  ? Positioned(
                                      bottom: 4.0,
                                      right: 10.0,
                                      child: ActiveIndicator())
                                  : Container()
                            ],
                          )
                        : Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: conSize2,
                                width: conSize2,
                                margin: EdgeInsets.only(right: 5),
                                child: CircleAvatar(
                                  radius: conSize2,
                                  child: ClipOval(
                                      child: Image.network(topMenu.image,
                                          fit: BoxFit.cover,
                                          height: conSize2,
                                          width: conSize2)),
                                ),
                              ),
                              topMenu.active == true
                                  ? Positioned(
                                      bottom: 4.0,
                                      right: 10.0,
                                      child: ActiveIndicator())
                                  : Container(),
                            ],
                          ),
                SizedBox(height: 3.0),
                index == 0 ? Text('Your Story') : Text(topMenu.name)
              ],
            );
          }),
    );
  }
}
