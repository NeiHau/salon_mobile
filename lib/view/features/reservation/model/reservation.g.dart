// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationListImpl _$$ReservationListImplFromJson(
        Map<String, dynamic> json) =>
    _$ReservationListImpl(
      reservationList: (json['reservationList'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            DateTime.parse(k),
            (e as List<dynamic>)
                .map((e) => Reservation.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$ReservationListImplToJson(
        _$ReservationListImpl instance) =>
    <String, dynamic>{
      'reservationList': instance.reservationList
          ?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

_$ReservationImpl _$$ReservationImplFromJson(Map<String, dynamic> json) =>
    _$ReservationImpl(
      customerId: json['customerId'] as String,
      reservationDate: DateTime.parse(json['reservationDate'] as String),
      customerName: json['customerName'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$ReservationImplToJson(_$ReservationImpl instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'reservationDate': instance.reservationDate.toIso8601String(),
      'customerName': instance.customerName,
      'email': instance.email,
    };
