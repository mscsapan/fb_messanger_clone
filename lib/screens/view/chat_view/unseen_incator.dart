import 'package:flutter/material.dart';

class UnSeenIndicatorDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 15.0,
        width: 15.0,
        decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle));
  }
}

class UnSeenIndicatorImage extends StatelessWidget {
  final String seenImage;
  double imageSize = 25.0;

  UnSeenIndicatorImage({required this.seenImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imageSize,
      width: imageSize,
      child: CircleAvatar(
        radius: imageSize,
        child: ClipOval(
          child: Image.network(seenImage,
              fit: BoxFit.cover, height: imageSize, width: imageSize),
        ),
      ),
    );
  }
}
