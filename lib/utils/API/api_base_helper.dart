import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiBaseHelper {
  final Connectivity connectivity = Connectivity();
  // var box = GetStorage();

  Future<dynamic> post(String url, Map reqBody) async {
    if (kDebugMode) {
      print('url----- ${url}');
      print('reqBody----- ${reqBody}');
    }

    var responseJson;
    try {
      final response = await http.post(Uri.parse(url),
          body: jsonEncode(reqBody),
          headers: {HttpHeaders.contentTypeHeader: 'application/json'});
      responseJson = _returnResponse(response);
    } on SocketException {
      throw Exception('Check Your Network Connection');
    }
    return responseJson;
  }

  Future<dynamic> postToken(String url, Map reqBody) async {
    var responseJson;
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();

      String? tokenIdd = '';
      // tokenIdd = _prefs.getString(userTokenId);

      debugPrint("data==>" + reqBody.toString(), wrapWidth: 1024);
      debugPrint("url==>" + url);
      debugPrint("user tokenId==>" + tokenIdd!);

      final response =
          await http.post(Uri.parse(url), body: jsonEncode(reqBody), headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        'Authorization': 'Bearer ${tokenIdd}'
      });

      responseJson = _returnResponse(response);
    } on SocketException {
      Fluttertoast.showToast(msg: "Please check your Connection");
      throw Exception('Check Your Network Connection');
    }
    return responseJson;
  }

  Future<dynamic> get(String url) async {
    if (kDebugMode) {
      print(url);// print('===================>>>>>>>>>>>>>>>>>>>>>>   ${box.read('token')}');
    }
    var responseJson;
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          // 'Authorization': 'Bearer ${box.read('token')}',
        },
      );
      return responseJson = _returnResponse(response);
    } on SocketException {
      Fluttertoast.showToast(msg: "Please check your Connection");
      throw Exception('Check Your Network Connection');
    }
  }

  Future<dynamic> patch(String url, Map reqBody) async {
    var responseJson;
    try {
      final response =
          await http.patch(Uri.parse(url), body: reqBody, headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        // 'Authorization': 'Bearer ${box.read('token')}',
      });
      return responseJson = _returnResponse(response);
    } on SocketException {
      Fluttertoast.showToast(msg: "Please check your Connection");
      throw Exception('Check Your Network Connection');
    }
  }

  // _authFailure() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.setString('token', "");
  //   Get.offUntil(
  //     MaterialPageRoute(
  //       builder: (ctx) => LoginView(),
  //     ),
  //     (route) => true,
  //   );
  // }

  Future<dynamic> OxFoxrdDict(Map reqBody, String wordId) async {
    var responseJson;
    var url =
        "https://od-api.oxforddictionaries.com/api/v2/entries/en-gb/$wordId";
    try {
      var response = await http.get(Uri.parse(url), headers: {
        HttpHeaders.contentTypeHeader: "application/json",
        "app_id": "d8731aa2",
        "app_key": "56dda96aefb4413334fedbcabe82c1d3"
      });

      responseJson = _returnResponse(response);
    } on SocketException {
      Fluttertoast.showToast(msg: "Please check your Connection");
      throw Exception('Check Your Network Connection');
    } catch (e) {
      print(e);
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    if (kDebugMode) {
      log("response statusCode ==>" + response.statusCode.toString());

      log("response ==>" + response.body.toString());
    }
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
        // _authFailure();
        print(
            '-------------------------------------------------dddddddddddddddddddddddddddddddddddddddddddd----------------');
        return null;
      case 404:
        throw CommunicationException(response.body.toString());
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode: ${response.statusCode}');
    }
  }
}

class FetchDataException extends CustomException {
  FetchDataException([message])
      : super(message, "Error During Communication: ");
}

class BadRequestException extends CustomException {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}

class CommunicationException extends CustomException {
  CommunicationException([message]) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends CustomException {
  UnauthorisedException([message]) : super(message, "Unauthorised: ");
}

class InvalidInputException extends CustomException {
  InvalidInputException([message]) : super(message, "Invalid Input: ");
}

class CustomException implements Exception {
  final _message;
  final _prefix;

  CustomException([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}
