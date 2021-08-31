import 'package:flutter/material.dart';

class MissedCall extends StatelessWidget {
  String call = 'Missed Call';

  @override
  Widget build(BuildContext context) {
    return Text(call,
        style: TextStyle(
            fontSize: 16.0, color: Colors.red, fontWeight: FontWeight.w700));
  }
}
