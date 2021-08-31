import 'package:messanger_clone/data/user_images.dart';

class Count {
  static int count = 0;
  ChatModel? model;
  Count() {
    if (model!.active == true) {
      count++;
    }
  }
}

class ChatModel {
  final List<String> chatListImages;
  final List<String> chatListNames;
  final String message;
  final String minutes;
  final bool active;
  final bool unseenMessage;
  final bool missedCall;
  final bool sendByMe;
  static int count = 0;

  ChatModel(
      {required this.chatListImages,
      required this.chatListNames,
      required this.message,
      required this.minutes,
      required this.active,
      required this.unseenMessage,
      required this.missedCall,
      required this.sendByMe});
}

final List<ChatModel> users = [
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'Hello',
    minutes: '27m',
    missedCall: true,
    sendByMe: true,
    active: true,
    unseenMessage: true,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'Hello',
    minutes: '27m',
    missedCall: false,
    sendByMe: false,
    active: true,
    unseenMessage: false,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'Hello',
    minutes: '1hour',
    missedCall: true,
    sendByMe: false,
    active: false,
    unseenMessage: false,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'Hello',
    minutes: 'now',
    missedCall: false,
    sendByMe: false,
    active: true,
    unseenMessage: true,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'where are are.??',
    minutes: '10m',
    missedCall: false,
    sendByMe: true,
    active: false,
    unseenMessage: true,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'i\'m fine and you?',
    minutes: 'Fri',
    missedCall: false,
    sendByMe: true,
    active: false,
    unseenMessage: false,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'Okk, thank you',
    minutes: '2m',
    missedCall: false,
    sendByMe: false,
    active: true,
    unseenMessage: false,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'Okk, thank you',
    minutes: '2m',
    missedCall: false,
    sendByMe: false,
    active: true,
    unseenMessage: false,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'Hello',
    minutes: 'now',
    missedCall: true,
    sendByMe: true,
    active: false,
    unseenMessage: true,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'where are are.??',
    minutes: '19 Aug',
    missedCall: false,
    sendByMe: true,
    active: true,
    unseenMessage: false,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'you are soo sweet',
    minutes: 'Fri',
    missedCall: true,
    sendByMe: true,
    active: false,
    unseenMessage: false,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'Okk, thank you',
    minutes: '2m',
    missedCall: false,
    sendByMe: true,
    active: true,
    unseenMessage: false,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'i\'m fine and you?',
    minutes: 'Fri',
    missedCall: false,
    sendByMe: true,
    active: false,
    unseenMessage: false,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'Okk, thank you',
    minutes: '2m',
    missedCall: false,
    sendByMe: true,
    active: true,
    unseenMessage: true,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'Okk, thank you',
    minutes: 'Sep 10',
    missedCall: true,
    sendByMe: false,
    active: true,
    unseenMessage: false,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'Hello, chap!',
    minutes: 'now',
    missedCall: true,
    sendByMe: true,
    active: false,
    unseenMessage: false,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'i\'m fine and you?',
    minutes: 'Fri',
    missedCall: false,
    sendByMe: true,
    active: false,
    unseenMessage: false,
  ),
  ChatModel(
    chatListImages: usersImages,
    chatListNames: userNames,
    message: 'Hi,there',
    minutes: '2m',
    missedCall: false,
    sendByMe: true,
    active: true,
    unseenMessage: true,
  ),
];
