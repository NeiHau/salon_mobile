import 'package:freezed_annotation/freezed_annotation.dart';

part 'salon_request_model.g.dart';

@JsonSerializable()
class SalonRequestModel {
  int age;
  String gender;
  String occupation;
  int hairLength;
  String hairColor;

  SalonRequestModel({
    required this.age,
    required this.gender,
    required this.occupation,
    required this.hairLength,
    required this.hairColor,
  });

  factory SalonRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SalonRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$SalonRequestModelToJson(this);
}
