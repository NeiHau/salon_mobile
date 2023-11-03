import 'package:freezed_annotation/freezed_annotation.dart';

part 'salon_response_model.g.dart';

@JsonSerializable()
class SalonResponseModel {
  String recommendation;

  SalonResponseModel({required this.recommendation});

  factory SalonResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SalonResponseModelFromJson(json);
}
