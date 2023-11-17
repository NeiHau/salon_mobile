import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final baseUrl = dotenv.get('BASE_URL', fallback: 'http://fallback-url');

  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      responseType: ResponseType.json,
    ),
  );

  dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

  return dio;
});
