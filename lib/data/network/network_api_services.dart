import 'dart:io';

import 'package:http/http.dart' as http;

import '../../utils/imports/all_imports.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getApi(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url));
      responseJson = returnResponse(response);
// log(response.statusCode.toString());
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }
    return responseJson;
  }

  @override
  Future postApi(data, String url) async {
    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(url), body: data);
      responseJson = returnResponse(response);
// log(response.statusCode.toString());
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    // log(response.body.toString());
    switch (response.statusCode) {
      case 200:
      case 201:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlException();
      default:
        throw InternetException();
    }
  }
}
