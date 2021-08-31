import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final IconData? icon;
  final double? size;
  final double? heightWidth;
  final Color? color;
  CustomContainer(
      {required this.icon, this.size, this.heightWidth, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightWidth ?? 45.0,
      width: heightWidth ?? 45.0,
      decoration:
          BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
      child: Icon(icon, size: size, color: color),
    );
  }
}
