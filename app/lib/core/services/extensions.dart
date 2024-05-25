import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_gpt/core/services/helpers/log_helper.dart';

extension IterableExtension<T> on Iterable<T> {
  /// Maps each element and its index to a new value.
  Iterable<R> mapIndexed<R>(R Function(int index, T element) convert) sync* {
    var index = 0;
    for (final element in this) {
      yield convert(index++, element);
    }
  }
}

extension RiverpodAsyncValueExtension<T> on AsyncValue<T> {
  Widget onSuccess(
    Widget Function(T data) data, {
    Widget Function()? loading,
    Widget Function(Object error, StackTrace stackTrace)? error,
    bool skipLoadingOnReload = false,
    bool skipLoadingOnRefresh = true,
    bool skipError = false,
  }) {
    return when(
      error: error ??
          (error, stackTrace) {
            if (kDebugMode) {
              printLog(error);
              printLog(stackTrace);
            }
            return const SizedBox();
          },
      loading: loading ?? () => const SizedBox(),
      skipError: skipError,
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      skipLoadingOnReload: skipLoadingOnReload,
      data: data,
    );
  }
}
