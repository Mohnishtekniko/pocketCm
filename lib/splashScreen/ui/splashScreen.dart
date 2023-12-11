import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:pocketcrm/signInScreen/bloc/sign_in_bloc.dart';
import 'package:pocketcrm/signInScreen/ui/signUpScreen.dart';
import 'package:pocketcrm/utils/commonMethod.dart';
import 'package:pocketcrm/utils/login_credentials.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

      final SharedPreferences prefs = await SharedPreferences.getInstance();

      String userName1 = prefs.getString(userName) ?? '';
      String password1 = prefs.getString(password) ?? '';


      final signInBloc = context.read<SignInBloc>() ;

      signInBloc.add(SignInApi(
          context: context ,
          userName:userName1,
          passWord: password1
      )) ;


      // navPushRemove(context: context, action: SignUpScreen());
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
