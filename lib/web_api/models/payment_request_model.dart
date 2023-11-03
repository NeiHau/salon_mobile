import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_request_model.freezed.dart';
part 'payment_request_model.g.dart';

@freezed
class PaymentRequestModel with _$PaymentRequestModel {
  const factory PaymentRequestModel({
    required int amount,
    required String currency,
    required String receiptEmail,
  }) = _PaymentRequestModel;

  factory PaymentRequestModel.fromJson(Map<String, Object?> json) =>
      _$PaymentRequestModelFromJson(json);
}
