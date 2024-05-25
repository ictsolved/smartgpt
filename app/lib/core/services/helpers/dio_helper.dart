import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:smart_gpt/core/services/helpers/dio_interceptor.dart';

/// A top level constant to access [Dio] client with customizations
Dio get client {
  final dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: kDebugMode ? 10000 : 60000),
    ),
  );

  dio.interceptors.add(DioSmartGPTInterceptor());
  dio.interceptors.add(DioErrorMessageInterceptor());
  // Add network error interceptors related to handle internet connection
  dio.interceptors.add(DioNetworkErrorInterceptor());

  // Print network logs to the console during debug
  if (kDebugMode) dio.interceptors.add(DioLogInterceptor());

  return dio;
}
