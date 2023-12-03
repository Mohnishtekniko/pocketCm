import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pocketcrm/signInScreen/ui/signUpScreen.dart';
import 'package:pocketcrm/utils/commonMethod.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inFun();
  }

  inFun() {
    Timer(Duration(seconds: 3), () async {
      navPush(context: context, action: SignUpScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/splashImage.png",
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
