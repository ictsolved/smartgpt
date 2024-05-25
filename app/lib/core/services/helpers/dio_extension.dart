import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_gpt/core/services/helpers/dio_helper.dart' as network;
import 'package:smart_gpt/core/services/helpers/dio_interceptor.dart';

/// Extensions for Riverpod with [Dio] client
extension DioRiverpodExtension on Ref {
  /// Adds loader, request cancellor and response dialog
  Dio get client {
    final dio = network.client;
    dio.interceptors.add(DioLoaderInterceptor(this));
    dio.interceptors.add(DioRequestCancelInterceptor(this));
    return dio;
  }
}

extension DioExtension on Dio {
  /// Removes loader interceptor from client
  Dio get hideLoader {
    interceptors.removeWhere((element) => element is DioLoaderInterceptor);
    return this;
  }

  /// Client without error message dialog
  Dio get hideMessage {
    interceptors
        .removeWhere((element) => element is DioErrorMessageInterceptor);
    return this;
  }
}
