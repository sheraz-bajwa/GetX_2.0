import 'dart:io';

import 'package:getx/MVVM/Data/Exceptions.dart';
import 'package:getx/MVVM/Networks/Base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    try {
      final response = http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }
  }
  retu
}
