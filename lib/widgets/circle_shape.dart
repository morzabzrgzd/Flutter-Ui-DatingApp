import 'package:flutter/material.dart';



class CircleShape extends StatelessWidget {
  const CircleShape({
    Key key,
    @required this.size,
    this.height,
    this.width,
    this.color,
    this.left,
    this.top,
  }) : super(key: key);

  final Size size;
  final double height;
  final double width;
  final color;
  final double left;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
