import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:pocketcrm/signInScreen/model/login_model.dart';
import 'package:pocketcrm/signInScreen/ui/signUpScreen.dart';
import 'package:pocketcrm/utils/commonMethod.dart';
import 'package:pocketcrm/utils/login_credentials.dart';
import 'package:pocketcrm/web_view_home/web_view_home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/API/HttpClient.dart';
import '../../utils/API/end_points.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState()) {
    on<SignInEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<SignInApi>(signInApi);
  }

  HttpClients httpClients = HttpClients();


  FutureOr<void> signInApi(SignInApi event, Emitter<SignInState> emit) async{


    final SharedPreferences prefs = await SharedPreferences.getInstance();


    //httpClients.loginApi(username: 'YW0007', password: 'YW9008@#');
   await httpClients
        .loginApi(
            username: event.userName.toString(),
            password: event.passWord.toString())
        .then((value) {
      if (value != null && value.status == 'true') {
        String urlGet =
            "$baseUrl/data.php?username=${event.userName.toString()}&password=${event.passWord.toString()}";
        log("Url is ======>>> $urlGet");


        prefs.setString(userName, event.userName.toString());
        prefs.setString(password, event.passWord.toString());
        prefs.setString(lauchURL, urlGet.toString());
        
        navPushRemove(context: event.context!, action: WebViewHome(launchHomeUrl: urlGet.toString())) ;
        
      }
      else {
        navPushRemove(context: event.context!, action: SignUpScreen()) ;
      }
    }).onError((error, stackTrace) {
      log("Error in signInApi====>>>>   $error");
    });

    // emit(state.copyWith(loginModel: response));
    // log('${state.loginModel}') ;
    // if (state.loginModel != null && state.loginModel?.status == 'true') {
    //
    //   log('attt') ;
    //   String urlGet =
    //       "$baseUrl/data.php?username=${event.userName.toString()}&password=${event.passWord.toString()}";
    //   log("Url is ======>>> $urlGet");
    // }
  }

  // Future<void> _launchUrl(Uri url) async {
  //
  //   mode: LaunchMode.inAppBrowserView;
  //
  //
  //
  //   print("url for launch iss---------------------->>>>>> $url");
  //
  //   if (!await launchUrl(url)) {
  //     throw Exception('Could not launch $url');
  //   }
  // }

}
