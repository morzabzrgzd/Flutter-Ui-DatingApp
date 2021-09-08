import 'package:flutter/material.dart';



class Button extends StatelessWidget {
  const Button({
    Key key,
    @required this.size,
    this.onTab,
    this.name, this.vertical, this.borderColor, this.color,
  }) : super(key: key);

  final Size size;
  final onTab;
  final name;
  final vertical;
  final borderColor;
  final color;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.06,
          vertical: vertical,
        ),
        alignment: Alignment.center,
        height: size.height * 0.06,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: .5
          ),
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: size.width * 0.04,
          ),
        ),
      ),
    );
  }
}
