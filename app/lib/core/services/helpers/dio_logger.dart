import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:smart_gpt/core/services/helpers/log_helper.dart';
import 'package:smart_gpt/core/services/typedefs.dart';

class DioLogger {
  void error(DioException error) {
    printLog(
      <String, dynamic>{
        'url': error.response?.realUri.toString(),
        'body': error.response?.data,
        // 'stackTrace': error.stackTrace.toString(),
        'statusCode': error.response?.statusCode,
        'statusMessage': error.response?.statusMessage,
        'errorMessage': error.message,
        'errorType': _errorType(error.type),
      },
      color: ANSIColor.red,
      name: 'Error',
    );
  }

  void request(RequestOptions options) {
    Object? data;
    // key name like body, form etc.
    var dataKeyName = 'body';
    try {
      if (options.data != null) {
        if (options.data is FormData) {
          final formData = options.data as FormData;
          final formMap = JsonMap();
          // add fields to form
          for (final e in formData.fields) {
            formMap.addAll({e.key: e.value});
          }
          // add file name to form
          for (final e in formData.files) {
            formMap.addAll({e.key: e.value.filename});
          }
          dataKeyName = 'form-data';
          data = formMap;
        } else {
          data = jsonDecode(options.data as String);
        }
      }
    } catch (_) {
      data = options.data;
    }

    printLog(
      <String, dynamic>{
        'method': options.method,
        'url': options.path,
        if (options.queryParameters.isNotEmpty)
          'params': options.queryParameters,
        'header': options.headers,
        if (data != null) dataKeyName: data,
      },
      color: ANSIColor.magentaBright,
      name: 'Request',
    );
  }

  void response(Response<dynamic> response) {
    printLog(
      <String, dynamic>{
        'url': response.realUri.toString(),
        'body': response.data,
        'statusCode': response.statusCode,
        'statusMessage': response.statusMessage,
      },
      color: ANSIColor.green,
      name: 'Response',
    );
  }
}

String _errorType(DioExceptionType type) {
  return switch (type) {
    DioExceptionType.connectionTimeout => 'Connection Timeout',
    DioExceptionType.sendTimeout => 'Send Timeout',
    DioExceptionType.receiveTimeout => 'Receive Timeout',
    DioExceptionType.badCertificate => 'Bad Certificate',
    DioExceptionType.badResponse => 'Bad Response',
    DioExceptionType.cancel => 'Request Cancelled',
    DioExceptionType.connectionError => 'Connection Error',
    DioExceptionType.unknown => 'Unknown'
  };
}
