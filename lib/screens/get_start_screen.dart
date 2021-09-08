import 'package:dating_app_sign_up/constant.dart';
import 'package:dating_app_sign_up/screens/login_screen.dart';
import 'package:dating_app_sign_up/widgets/button.dart';
import 'package:dating_app_sign_up/widgets/circle_shape.dart';
import 'package:dating_app_sign_up/widgets/image_position.dart';
import 'package:flutter/material.dart';

class GetStartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgrounColor,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: size.height * 0.05,
                      left: size.width * 0.04,
                      right: size.width * 0.04,
                      bottom: size.height * 0.05,
                    ),
                    width: double.infinity,
                    height: size.height / 2,
                    decoration: BoxDecoration(
                      color: kCircleColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                  ),
                  ImagePosition(
                    size: size,
                    image: 'assets/images/2.png',
                    right: size.width * 0.04,
                    bottom: size.height * 0.12,
                  ),
                  ImagePosition(
                    size: size,
                    image: 'assets/images/4.png',
                  ),
                  ImagePosition(
                    size: size,
                    left: size.width * 0.08,
                    bottom: size.height * 0.15,
                    image: 'assets/images/5.png',
                  ),
                  ImagePosition(
                    size: size,
                    right: size.width * 0.08,
                    top: size.height * 0.06,
                    image: 'assets/images/3.png',
                  ),
                  ImagePosition(
                    size: size,
                    left: size.width * 0.06,
                    top: size.height * 0.08,
                    image: 'assets/images/1.png',
                  ),
                  CircleShape(
                    size: size,
                    color: kCircleColor.withOpacity(.5),
                    left: size.width * 0.15,
                    height: 20,
                    width: 20,
                  ),
                  CircleShape(
                    size: size,
                    color: kCircleColor.withOpacity(.8),
                    left: size.width * 0.35,
                    height: 10,
                    width: 10,
                    top: size.height * 0.05,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.06,
                ),
                child: Text(
                  'The best place to meet your future\npartner.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.1,
                  ),
                ),
              ),
              Button(
                size: size,
                borderColor: kButtonColor,
                color: kButtonColor,
                vertical: size.height*0.04,
                name: 'Get Started',
                onTab: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
