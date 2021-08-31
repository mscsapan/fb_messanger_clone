import 'package:flutter/material.dart';

class NotificationBar extends StatelessWidget {
  final String message;
  NotificationBar({required this.message});
  @override
  Widget build(BuildContext context) {
    double size = 16;
    var convertInt = int.parse(message);
    return Container(
      height: 25.0,
      width: 25.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2),
          color: Colors.red),
      child: Center(
          child: Text(
        message,
        style: TextStyle(
            color: Colors.white, fontSize: convertInt > 9 ? size - 3 : size),
      )),
    );
  }
}
