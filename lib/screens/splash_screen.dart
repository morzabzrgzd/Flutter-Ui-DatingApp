import 'package:dating_app_sign_up/constant.dart';
import 'package:dating_app_sign_up/screens/get_start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplahScreen extends StatefulWidget {
  @override
  _SplahScreenState createState() => _SplahScreenState();
}

class _SplahScreenState extends State<SplahScreen> {
  @override
  void initState() {
    super.initState();
    handleSplash();
  }

  handleSplash()async{
    await Future.delayed(Duration(seconds: 4));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GetStartScreen(),));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgrounColor,
        body: Center(
          child: Container(
            padding: EdgeInsets.all(size.width * 0.18),
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: kCircleColor.withOpacity(.05),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(size.width * 0.08),
              decoration: BoxDecoration(
                color: kCircleColor.withOpacity(.06),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                'assets/icons/IconHeart.svg',
                color: Color(0xffBB4156),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
