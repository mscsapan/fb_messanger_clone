import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:messanger_clone/model/conversation_model.dart';
import 'package:messanger_clone/screens/view/custom_profile_image.dart';

class Conversation extends StatelessWidget {
  final String name;
  final String image;

  const Conversation({required this.name, required this.image});

  iconButton({Function()? onPressed, Widget? icon}) {
    return IconButton(
        onPressed: onPressed, icon: icon!, color: Colors.purpleAccent);
  }

  appBar(BuildContext context) => AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                iconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: FaIcon(FontAwesomeIcons.arrowLeft)),
                profilePicture(),
                SizedBox(width: 10.0),
                Text(name,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
              ],
            ),
            Row(
              children: [
                iconButton(onPressed: () {}, icon: Icon(Icons.call)),
                iconButton(
                    onPressed: () {}, icon: FaIcon(FontAwesomeIcons.camera)),
                iconButton(
                    onPressed: () {}, icon: FaIcon(FontAwesomeIcons.info)),
              ],
            )
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black12,
        toolbarHeight: 62.0,
      );

  conversationStyle() => TextStyle(fontSize: 20.0);

  final double imageSize = 50.0;
  final double radius = 30.0;

  profilePicture() {
    return Container(
      height: imageSize,
      width: imageSize,
      margin: EdgeInsets.all(5.0),
      child: CircleAvatar(
        radius: imageSize,
        child: ClipOval(
          child: Image.network(image,
              fit: BoxFit.cover, height: imageSize, width: imageSize),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            reverse: false,
            itemCount: myMessages.length,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            itemBuilder: (context, index) {
              var converse = conversation[index];
              return Row(
                mainAxisAlignment: converse.sendByMe == true
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(top: 2.0, bottom: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(radius),
                            topRight: Radius.circular(radius),
                            bottomLeft: converse.sendByMe != true
                                ? Radius.circular(0.0)
                                : Radius.circular(radius),
                            bottomRight: converse.sendByMe == true
                                ? Radius.circular(0.0)
                                : Radius.circular(radius),
                          )),
                      child: Text('${myMessages[index]}',
                          style: conversationStyle())),
                  Visibility(
                    visible: false,
                    child: Container(
                      height: imageSize,
                      width: imageSize,
                      margin: EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        radius: imageSize,
                        child: ClipOval(
                          child: converse.sendByMe == true
                              ? Image.network(myImage,
                                  fit: BoxFit.cover,
                                  height: imageSize,
                                  width: imageSize)
                              : Image.network(image,
                                  fit: BoxFit.cover,
                                  height: imageSize,
                                  width: imageSize),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
