// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_api_error_model.freezed.dart';
part 'web_api_error_model.g.dart';

@freezed
class WebApiErrorModel with _$WebApiErrorModel {
  const factory WebApiErrorModel({
    @Default('') String detail,
    Map<String, dynamic>? errors,
  }) = _WebApiErrorModel;
  const WebApiErrorModel._();

  factory WebApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$WebApiErrorModelFromJson(json);
}
