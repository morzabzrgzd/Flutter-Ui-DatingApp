import 'package:flutter/material.dart';

import '../constant.dart';


class BuildTextField extends StatelessWidget {
  const BuildTextField({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
      ),
      decoration: BoxDecoration(
        color: Color(0xffF0F0F0),
        borderRadius: BorderRadius.circular(10),
      ),
      height: size.height * 0.06,
      child: TextField(
        decoration: InputDecoration(
          hintText: '+91',
          hintStyle: TextStyle(
            color: kTextColor,
            fontSize: size.width*0.045,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: size.width*0.04
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
