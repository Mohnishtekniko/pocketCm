import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocketcrm/utils/API/HttpClient.dart';

import '../../utils/app_colors.dart';
import '../../utils/commonMethod.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  HttpClients httpClients = HttpClients();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // SvgPicture.asset("assets/images/splashIcon.svg"),
          SizedBox(
            height: 70,
          ),
          Image.asset(
            "assets/images/splashImage.png",
            height: 150,
            width: 100,
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    color: Color(0xFF121725),
                    fontSize: 28,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Username/ Phone',
                  style: TextStyle(
                    color: Color(0xFF121725),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                customTextFormField(
                    BuildContext: context,
                    title: 'Username/phone',
                    controllerr: null,
                    hintText: "Enter Username",
                    icon: Icon(Icons.person)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    color: Color(0xFF121725),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                customTextFormField(
                    BuildContext: context,
                    title: 'Password',
                    controllerr: null,
                    icon: Icon(Icons.visibility_off),
                    hintText: "Enter Password"),
                SizedBox(
                  height: 20,
                ),
                buttonSection(context)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buttonSection(BuildContext context) {
    return InkWell(
      onTap: (){
        httpClients.loginApi(username: 'YW0007', password: '12345');
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.appYellowColor,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            'Sign In',
            style: TextStyle(
              color: Color(0xFF121725),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
