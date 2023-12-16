import 'package:dio/dio.dart';
import 'package:salon/view/utils/theme/app_strings.dart';

import '../../../web_api/models/api_error/web_api_error_model.dart';

class AsyncValueException implements Exception {
  const AsyncValueException({
    required this.dioExceptionType,
    this.statusCode,
    this.model,
  });

  final WebApiErrorModel? model;
  final String? statusCode;
  final DioExceptionType dioExceptionType;

  @override
  String toString() => model?.detail ?? AppStrings.apiException;
}

// FIXME デバイスによって返ってくるエラー異なるか検証
extension DioExceptionTypeExt on DioExceptionType {
  bool get isOffline =>
      this == DioExceptionType.connectionTimeout ||
      this == DioExceptionType.receiveTimeout ||
      this == DioExceptionType.sendTimeout ||
      this == DioExceptionType.connectionError ||
      this == DioExceptionType.unknown;
}
