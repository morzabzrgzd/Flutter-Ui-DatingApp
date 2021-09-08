import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SocialBurron extends StatelessWidget {
  const SocialBurron({
    Key key,
    @required this.size,
    this.borderColor,
    this.icon,
  }) : super(key: key);

  final Size size;
  final borderColor;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: size.height * 0.015),
        height: size.height * 0.06,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: borderColor,
              width: .25,
            )),
        child: SvgPicture.asset(
          icon,
          width: size.width * 0.04,
        ),
      ),
    );
  }
}
