import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_gpt/core/providers/loader_provider.dart';
import 'package:smart_gpt/core/services/helpers/dio_logger.dart';
import 'package:smart_gpt/core/services/helpers/ui_helper.dart';
import 'package:smart_gpt/core/widgets/calert_dialog.dart';
import 'package:smart_gpt/features/auth/services/auth_isar_service.dart';
import 'package:smart_gpt/features/auth/views/screens/login_screen.dart';

class DioLogInterceptor implements Interceptor {
  @override
  void onError(DioException exception, ErrorInterceptorHandler handler) {
    DioLogger().error(exception);
    handler.next(exception);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    DioLogger().request(options);
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    DioLogger().response(response);
    handler.next(response);
  }
}

class DioLoaderInterceptor implements Interceptor {
  const DioLoaderInterceptor(this.ref);

  final Ref ref;

  @override
  void onError(DioException exception, ErrorInterceptorHandler handler) {
    // Hide the loader when an error occurs
    ref.read(loaderStateProvider.notifier).hideLoader();
    handler.next(exception);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Show the loader when a request is made
    ref.read(loaderStateProvider.notifier).showLoader();
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    // Hide the loader when the response is received
    ref.read(loaderStateProvider.notifier).hideLoader();
    handler.next(response);
  }
}

class DioErrorMessageInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Show error dialog except for the cancelled requests
    if (err.type != DioExceptionType.cancel &&
        err.type != DioExceptionType.connectionError) {
      // We set different message here to know deserialization failed
      final errorMessage =
          err.response?.statusMessage ?? 'Something went wrong!';

      // show error dialog with error code
      cAlertDialog<void>(context: currentContext, content: Text(errorMessage));
    }
    handler.next(err);
  }
}

/// Adds cancel token to the request.
/// The request is cancelled when the provider is disposed.
///
/// This is mostly useful when the request is being made at initial build
/// and the user taps back. This will allow the request to be cancelled
/// as well as cancel the loader.
class DioRequestCancelInterceptor extends Interceptor {
  const DioRequestCancelInterceptor(this.ref);

  final Ref ref;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Add cancel token to the request
    final token = CancelToken();
    options.cancelToken = token;

    /// Cancel request when the provider is diposed

    // ref.onDispose(token.cancel);

    handler.next(options);
  }
}

/// Interceptor that can be used to handle the internet connection issue
class DioNetworkErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.type == DioExceptionType.connectionError) {
      cAlertDialog<void>(
        context: currentContext,
        content: const Text('Server Unreachable'),
      );
    }
    handler.next(err);
  }
}

class DioSmartGPTInterceptor extends Interceptor {
  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      await AuthIsarService().logout();
      await Navigator.of(currentContext).pushAndRemoveUntil(
        MaterialPageRoute<void>(builder: (context) => const LoginScreen()),
        (Route<dynamic> route) => false,
      );
    }
    handler.next(err);
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final loginResponse = await AuthIsarService().getUserCollection();
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${loginResponse?.tokens?.access?.token}',
    };
    options.headers.addAll(headers);

    handler.next(options);
  }
}
