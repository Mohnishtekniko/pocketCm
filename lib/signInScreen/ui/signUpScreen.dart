import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocketcrm/signInScreen/bloc/sign_in_bloc.dart';
import 'package:pocketcrm/utils/API/HttpClient.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/app_colors.dart';
import '../../utils/commonMethod.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final userNameController=TextEditingController();
  final passwordController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    final bloc=context.read<SignInBloc>();
    return Scaffold(
      body: BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) {
          return ListView(
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
                        maxLines: 1,
                        title: 'Username/phone',
                        controllerr: userNameController,
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
                        maxLines: 1,
                        title: 'Password',
                        controllerr: passwordController,
                        icon: Icon(Icons.visibility_off),
                        hintText: "Enter Password"),
                    SizedBox(
                      height: 20,
                    ),
                    buttonSection(context,bloc)
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget buttonSection(BuildContext context, SignInBloc bloc) {
    return InkWell(
      onTap: () {

        bloc.add(SignInApi(
            userName:userNameController.text.toString(),
            passWord: passwordController.text.toString()
           )
        );
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
