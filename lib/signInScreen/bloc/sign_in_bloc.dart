import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
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

    //httpClients.loginApi(username: 'YW0007', password: 'YW9008@#');
    await httpClients.loginApi(username: event.userName.toString(), password: event.passWord.toString()).then((value) {

      String urlGet="$baseUrl/data.php?username=${event.userName.toString()}&password=${event.passWord.toString()}";

      log("Url is ======>>> $urlGet");

      final Uri url = Uri.parse(urlGet);
      _launchUrl(url);


    }).onError((error, stackTrace) {

      log("Error in signInApi====>>>>   $error");
    });


  }

  Future<void> _launchUrl(Uri url) async {

    mode: LaunchMode.inAppBrowserView;



    print("url for launch iss---------------------->>>>>> $url");

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

}
