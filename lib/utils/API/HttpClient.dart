import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:pocketcrm/signInScreen/model/login_model.dart';
import 'package:pocketcrm/utils/API/end_points.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'api_base_helper.dart';

class HttpClients {
  static ApiBaseHelper _apiHelper = ApiBaseHelper();
  late String _deviceID, _deviceToken = '';
  String _deviceType = 'WEB';

  Future _init() async {
    final _prefs = await SharedPreferences.getInstance();
    _deviceToken = _prefs.getString('deviceToken') ?? '';
    try {
      // _deviceID = await PlatformDeviceId.getDeviceId ?? '';
    } on PlatformException {
      _deviceID = '';
    }
    _deviceToken = _prefs.getString('deviceToken') ?? '';

    if (Platform.isAndroid) {
      _deviceType = 'Android';
    } else if (Platform.isIOS) {
      _deviceType = 'IOS';
    }
  }

  Future<LoginModel?> loginApi({required String username,required String password}) async {
    // Map reqBody = {"phone": mobile};

    String url = '${Endpoint.login}username=$username&password=$password';

    log('-----url---  ${url}');

    final response = await _apiHelper.get(url);
    try {
      return LoginModel.fromJson(response);
    } catch (e) {
      return null;
    }
  }

}
