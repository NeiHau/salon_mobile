// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentRequestModelImpl _$$PaymentRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentRequestModelImpl(
      amount: json['amount'] as int,
      currency: json['currency'] as String,
      receiptEmail: json['receiptEmail'] as String,
    );

Map<String, dynamic> _$$PaymentRequestModelImplToJson(
        _$PaymentRequestModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'receiptEmail': instance.receiptEmail,
    };
