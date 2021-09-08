import 'package:flutter/material.dart';

class ImagePosition extends StatelessWidget {
  const ImagePosition({
    Key key,
    @required this.size,
    this.right,
    this.top,
    this.left,
    this.bottom,
    this.image,
  }) : super(key: key);

  final Size size;
  final right;
  final top;
  final left;
  final bottom;
  final image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      right: right,
      left: left,
      top: top,
      child: Image.asset(image),
    );
  }
}
