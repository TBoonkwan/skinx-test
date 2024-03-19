import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:skinx_test/core/configuration/app_config.dart';
import 'package:skinx_test/core/constants/app_constants.dart';

class ApiManager {
  Dio initial() {
    BaseOptions options = BaseOptions(
      baseUrl: dotenv.env[ConfigConstants.endpoint].toString(),
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );

    final dio = Dio(options)
      ..interceptors.add(AuthenticationInterceptor())
      ..interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      );
    return dio;
  }
}

class AuthenticationInterceptor extends Interceptor {
  final GetStorage storage = GetStorage();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String? accessToken = storage.read(AppConstants.accessToken);
    if (accessToken != null) {
      options.headers['Authorization'] = "Bearer $accessToken";
    }
    super.onRequest(options, handler);
  }
}
