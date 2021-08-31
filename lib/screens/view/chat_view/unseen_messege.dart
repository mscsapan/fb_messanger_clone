import 'package:flutter/cupertino.dart';
import 'package:messanger_clone/model/chat_model.dart';
import 'package:messanger_clone/screens/view/profile_image.dart';

Widget unseenMessage(ChatModel model) {
  return Text(model.sendByMe ? 'You: ${model.message}' : model.message,
      style: model.unseenMessage == true
          ? v.userTextStyle().copyWith(fontSize: 15.0)
          : v
              .userTextStyle()
              .copyWith(fontSize: 15.0, fontWeight: FontWeight.normal),
      overflow: TextOverflow.ellipsis);
}
