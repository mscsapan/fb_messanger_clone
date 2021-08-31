class ConversationModel {
  final bool? sendByMe;
  final List<String> messages;
  ConversationModel({required this.messages, this.sendByMe});
}

final List<ConversationModel> conversation = [
  ConversationModel(messages: myMessages, sendByMe: true),
  ConversationModel(messages: myMessages, sendByMe: false),
  ConversationModel(messages: myMessages, sendByMe: true),
  ConversationModel(messages: myMessages, sendByMe: false),
  ConversationModel(messages: myMessages, sendByMe: true),
  ConversationModel(messages: myMessages, sendByMe: false),
  ConversationModel(messages: myMessages, sendByMe: true),
  ConversationModel(messages: myMessages, sendByMe: false),
  ConversationModel(messages: myMessages, sendByMe: true),
  ConversationModel(messages: myMessages, sendByMe: false),
  ConversationModel(messages: myMessages, sendByMe: true),
  //copy from above
  /* ConversationModel(messages: myMessages, sendByMe: true),
  ConversationModel(messages: myMessages, sendByMe: false),
  ConversationModel(messages: myMessages, sendByMe: true),
  ConversationModel(messages: myMessages, sendByMe: false),
  ConversationModel(messages: myMessages, sendByMe: true),
  ConversationModel(messages: myMessages, sendByMe: false),
  ConversationModel(messages: myMessages, sendByMe: true),
  ConversationModel(messages: myMessages, sendByMe: false),
  ConversationModel(messages: myMessages, sendByMe: true),
  ConversationModel(messages: myMessages, sendByMe: false),
  ConversationModel(messages: myMessages, sendByMe: true),*/
];

final List<String> myMessages = [
  'Hello, buddy..',
  'Hi, buddy..boka chondro',
  'how r you. i want to meet you..?',
  'I\'m fine, what about you?',
  'by the grace of Allah i\'m also fine',
  'where are now, dear?',
  'i\'m at home because of covid-19',
  'okk, then come to my house',
  'little bit busy, now',
  'okk,than when u meet mee?',
  'at 5 pm.😒',
  //copy from above
  /*'Hello, buddy..',
  'Hi, buddy..',
  'how r you..?',
  'I\'m fine, what about you?',
  'i\'m also fine',
  'where are now, dear?',
  'i\'m at home',
  'okk, then come to my house',
  'little bit busy, now',
  'okk,than when u meet mee?',
  'at 5 pm.😒',*/
];
final List<String> otherMessages = [
  'Hi, buddy..',
  'how r you..?',
  'i\'m also fine',
  'i\'m at home',
];
