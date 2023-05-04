import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final serverErrorProvider = StateProvider<int>((ref) => 200);
final dioProvider = Provider<Dio>(
  (ref) {
    const token = 'trZhWT74kz9vC3keiJmiT44kJ7y5FrmRRBOjlcGzGSNxR9w6g3iOKjU4';

    return Dio(
      BaseOptions(
        headers: {
          'Authorization': token,
        },
      ),
    )..interceptors.addAll([
        SessionExpiredInterceptor(ref),
        SwapApiVersionsInterceptor(ref),
      ]);
  },
);

extension DioErrorX on DioError {
  String get errorMsg {
    switch (type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        return 'Timeout';

      case DioErrorType.response:
        switch (response?.statusCode) {
          // case 401:
          //   return '[${response?.statusCode}] Unauthorized, please try to login';
          // case 403:
          //   return '[${response?.statusCode}] Forbidden operation, please try to login';

          // case 404:
          //   return '[${response?.statusCode}] Not found';

          // case 500:
          //   return '[${response?.statusCode}] Internal server error';

          default:
            return '[${response?.statusCode}] Server Error ';
        }

      case DioErrorType.cancel:
        return 'Request has been cancelled';

      case DioErrorType.other:
        return 'An unknown error occured';
    }
  }
}

class SessionExpiredInterceptor implements Interceptor {
  final Ref ref;
  SessionExpiredInterceptor(this.ref);
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('this please ${options.path + options.headers.toString()}');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}

class SwapApiVersionsInterceptor implements Interceptor {
  final Ref ref;
  SwapApiVersionsInterceptor(this.ref);
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
