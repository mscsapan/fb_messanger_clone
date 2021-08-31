import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:messanger_clone/data/user_images.dart';
import 'package:messanger_clone/screens/home_screen.dart';
import 'package:messanger_clone/screens/people_screen.dart';
import 'package:messanger_clone/screens/view/notification.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _currentIndex = 0;
  Widget _bottomNavigationBar() {
    return SizedBox(
      height: 75.0,
      child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.comment,
                      size: 30,
                    ),
                    Positioned(
                        top: -4,
                        right: -6,
                        child: NotificationBar(message: '8'))
                  ],
                ),
                label: 'Chats'),
            BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    FaIcon(FontAwesomeIcons.userFriends, size: 30),
                    Positioned(
                        top: -5,
                        right: -6,
                        child: NotificationBar(
                            message: usersImages.length.toString()))
                  ],
                ),
                label: ''
                    'People'),
          ]),
    );
  }

  List<Widget> _list = [HomeScreen(), PeopleScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_currentIndex],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}
