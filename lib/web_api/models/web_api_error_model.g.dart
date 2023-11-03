// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebApiErrorModelImpl _$$WebApiErrorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WebApiErrorModelImpl(
      detail: json['detail'] as String? ?? '',
      errors: json['errors'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$WebApiErrorModelImplToJson(
        _$WebApiErrorModelImpl instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'errors': instance.errors,
    };
