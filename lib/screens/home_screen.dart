import 'package:flutter/material.dart';
import 'package:messanger_clone/screens/chat_list.dart';
import 'package:messanger_clone/screens/view/app_bar.dart';
import 'package:messanger_clone/screens/view/profile_image.dart';
import 'package:messanger_clone/screens/view/search.dart';
import 'package:messanger_clone/screens/view/top_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(child: ProfileImage()),
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: [
            Search(),
            TopView(),
            ChatList(),
          ],
        ),
      ),
    );
  }
}
