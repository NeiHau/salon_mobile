import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation.freezed.dart';
part 'reservation.g.dart';

@freezed
class ReservationList with _$ReservationList {
  const factory ReservationList({
    Map<DateTime, List<Reservation>>? reservationList,
  }) = _ReservationList;

  factory ReservationList.fromJson(Map<String, dynamic> json) =>
      _$ReservationListFromJson(json);
}

@freezed
class Reservation with _$Reservation {
  const factory Reservation({
    required String customerId,
    required DateTime reservationDate,
    required String customerName,
    required String email,
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, dynamic> json) =>
      _$ReservationFromJson(json);
}
