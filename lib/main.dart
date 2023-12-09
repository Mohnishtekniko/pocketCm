import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pocketcrm/signInScreen/bloc/sign_in_bloc.dart';
import 'package:pocketcrm/signInScreen/ui/signUpScreen.dart';
import 'package:pocketcrm/splashScreen/ui/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<SignInBloc>(
            create: (BuildContext context) => SignInBloc(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: SplashScreen(),
        ));
  }
}
