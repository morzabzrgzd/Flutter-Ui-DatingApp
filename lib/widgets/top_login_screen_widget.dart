import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class TopLoginScreenWidget extends StatelessWidget {
  const TopLoginScreenWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 2 - 50,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.08,
                      bottom: size.height * 0.05,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/IconHeart.svg',
                      color: Color(0xffBB4156),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.06,
                    ),
                    child: Text(
                      'Login to \na lovely life.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: SvgPicture.asset(
                'assets/images/imageVector.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
