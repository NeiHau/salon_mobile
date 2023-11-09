// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import '../../view/utils/app_strings.dart';
import '../../view/utils/exception.dart';
import '../models/api_error/web_api_error_model.dart';
import 'fuctions_response.dart';

Future<FunctionsResponse<T>> serviceCaller<T>({
  required Future<T> Function() call,
}) async {
  try {
    final result = await call();
    return FunctionsResponse(data: result);
  } on DioException catch (e) {
    WebApiErrorModel? model;
    if (e.response != null) {
      model =
          WebApiErrorModel.fromJson(e.response!.data as Map<String, dynamic>);
    }

    return FunctionsResponse(
      error: AsyncValueException(
        model: model,
        statusCode: e.response?.statusCode.toString(),
        dioExceptionType: e.type,
      ),
      errorMessage: model?.detail,
      errorCode: e.response?.statusCode.toString(),
    );
  } catch (e) {
    return FunctionsResponse(error: e, errorMessage: AppStrings.apiException);
  }
}
