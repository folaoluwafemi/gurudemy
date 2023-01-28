import 'dart:async';

import 'package:gurudemy/src/utils/error/error_barrel.dart';
import 'package:flutter/foundation.dart';

mixin BlocErrorHandlerMixin {
  Future<T> handleError<T>(
    Future<T> computation, {
    ErrorFallback<T>? catcher,
  }) async {
    try {
      return await computation;
    } catch (e, stackTrace) {
      late Failure failure;
      if (e is! Failure) {
        failure = Failure(message: '$e', stackTrace: stackTrace);
      } else {
        failure = e;
      }
      debugPrint(failure.toString());

      return catcher != null ? catcher.call(failure) : Future<T>.error(failure);
    }
  }
}
