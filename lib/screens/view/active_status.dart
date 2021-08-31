import 'package:flutter/material.dart';
import 'package:messanger_clone/screens/view/active_indicator.dart';

class WithStoryActiveStatus extends StatelessWidget {
  final String? image;
  final double heightWidth;
  WithStoryActiveStatus({required this.image, required this.heightWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightWidth,
      width: heightWidth,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          CircleAvatar(
            radius: heightWidth,
            child: ClipOval(
              child: Image.network(image!,
                  fit: BoxFit.cover, height: heightWidth, width: heightWidth),
            ),
          ),
          Positioned(right: 6, bottom: 6, child: ActiveIndicator())
        ],
      ),
    );
  }
}

class WithOutStoryActiveStatus extends StatelessWidget {
  final String? image;
  final double heightWidth;
  const WithOutStoryActiveStatus(
      {required this.image, required this.heightWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightWidth,
      width: heightWidth,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          CircleAvatar(
            radius: heightWidth,
            child: ClipOval(
              child: Image.network(image!,
                  fit: BoxFit.cover, height: heightWidth, width: heightWidth),
            ),
          ),
          Positioned(right: 12, bottom: 6, child: ActiveIndicator())
        ],
      ),
    );
  }
}

/*Widget withStoryActiveStatus({String? image, double? height, double? width}) {
  return Stack(
    children: [
      Image.network(image!, fit: BoxFit.cover, height: height, width: width),
      Positioned(right: 6, bottom: 6, child: ActiveIndicator())
    ],
  );
}*/

/*Widget withOutStoryActiveStatus(
    {String? image, double? height, double? width}) {
  return Stack(
    children: [
      Image.network(image!, fit: BoxFit.cover, height: height, width: width),
      Positioned(right: 12, bottom: 6, child: ActiveIndicator())
    ],
  );
}*/
