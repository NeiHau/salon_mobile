// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salon_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalonRequestModel _$SalonRequestModelFromJson(Map<String, dynamic> json) =>
    SalonRequestModel(
      age: json['age'] as int,
      gender: json['gender'] as String,
      occupation: json['occupation'] as String,
      hairLength: json['hairLength'] as int,
      hairColor: json['hairColor'] as String,
    );

Map<String, dynamic> _$SalonRequestModelToJson(SalonRequestModel instance) =>
    <String, dynamic>{
      'age': instance.age,
      'gender': instance.gender,
      'occupation': instance.occupation,
      'hairLength': instance.hairLength,
      'hairColor': instance.hairColor,
    };
