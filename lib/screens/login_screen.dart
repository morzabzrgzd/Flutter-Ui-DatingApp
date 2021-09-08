import 'package:dating_app_sign_up/constant.dart';
import 'package:dating_app_sign_up/widgets/build_text_field.dart';
import 'package:dating_app_sign_up/widgets/button.dart';
import 'package:dating_app_sign_up/widgets/social_login_button.dart';
import 'package:dating_app_sign_up/widgets/top_login_screen_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgrounColor,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopLoginScreenWidget(size: size),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.06,
                  vertical: size.height * 0.015,
                ),
                child: Text(
                  'Enter your mobile number',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.width * 0.04,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              BuildTextField(size: size),
              Button(
                size: size,
                borderColor: kButtonColor,
                color: kButtonColor,
                vertical: size.height * 0.03,
                name: 'Continue',
                onTab: () {},
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: size.width * 0.25),
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    child: Text('Or'),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: size.width * 0.25),
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SocialLoginButton(size: size),
              Center(
                child: Text(
                  'By continue to login, you accept our company’s',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: kText2Color.withOpacity(.6)),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Term & conditions',
                        style: TextStyle(
                          color: kText2Color,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          color: kText2Color.withOpacity(.6),
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy policies.',
                        style: TextStyle(
                          color: kText2Color,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
