import 'package:dating_app_sign_up/widgets/social_button.dart';
import 'package:flutter/material.dart';

import '../constant.dart';


class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
        vertical: size.height*0.03,
      ),
      child: Row(
        children: [
          SocialBurron(
            size: size,
            borderColor: kButtonColor,
            icon: 'assets/icons/iconGoogle.svg',
          ),
          SizedBox(width: size.width*0.06),
          SocialBurron(
            size: size,
            borderColor: Colors.blue,
            icon: 'assets/icons/iconFacebook.svg',
          ),
        ],
      ),
    );
  }
}
