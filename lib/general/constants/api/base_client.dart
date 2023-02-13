import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BaseClient {
  static Future<BaseOptions> getBasseOptions() async {
    final prefs = await SharedPreferences.getInstance();
    BaseOptions options = BaseOptions(
      followRedirects: false,
      validateStatus: (status) {
        return status! < 500;
      },
      headers: {
        "Accept": "application/json",
        'Content-type': 'application/json',
        'X-Requested-With': 'XMLHttpRequest',
        'Authorization': 'Bearer ${prefs.getString('tokeny')}',
      //  'Authorization': 'Bearer ${Constants.token}',
      },
    );
    return options;
  }

  static Future<dynamic> get({required String url, var payload}) async {
    var _dio = Dio(await getBasseOptions());

    var response = await _dio.get(url, queryParameters: payload);
    debugPrint('\nURL: $url');
    debugPrint('Request Body: $response\n');
    return response;
  }

  static Future<dynamic> post({url, payload}) async {
    var _dio = Dio(await getBasseOptions());
    var response = await _dio.post(url, data: payload);
    debugPrint('\nURL: $url');
    debugPrint('Request Body: $response\n');
    return response;
  }

  static Future<dynamic> postWithQP({url, queryPayload}) async {
    var _dio = Dio(await getBasseOptions());
    var response = await _dio.post(url, queryParameters: queryPayload);
    return response;
  }

  static Future<dynamic> put({url, payload}) async {
    var _dio = Dio(await getBasseOptions());
    var response = await _dio.put(url, data: payload);
    return response;
  }

  static Future<dynamic> delete({url}) async {
    var _dio = Dio(await getBasseOptions());
    var response = await _dio.delete(url);
    return response;
  }
}
