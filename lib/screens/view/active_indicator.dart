import 'package:flutter/material.dart';

class ActiveIndicator extends StatelessWidget {
  const ActiveIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      width: 20.0,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 12.0,
          width: 12.0,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.green),
        ),
      ),
    );
  }
}
