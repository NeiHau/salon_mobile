import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:salon/main.dart';

import '../model/reservation.dart';

final reservationNotifierProvider =
    StateNotifierProvider<ReservationNotifier, Reservation>((ref) {
  return ReservationNotifier();
});

class ReservationNotifier extends StateNotifier<Reservation> {
  ReservationNotifier()
      : super(
          Reservation(
            customerId: '',
            reservationDate: DateTime.now(),
            customerName: '',
            email: '',
          ),
        );

  // 顧客情報
  final CollectionReference customers =
      FirebaseFirestore.instance.collection('customers');

  // 予約
  final CollectionReference reservations =
      FirebaseFirestore.instance.collection('reservations');

  // 予約情報のマッピング
  Map<DateTime, List<Reservation>> reservationDates = {};

  // 予約情報取得メソッド
  Future<void> fetchReservations() async {
    try {
      QuerySnapshot reservationSnapshot = await reservations.get();
      Map<DateTime, List<Reservation>> tempReservations = {};

      for (QueryDocumentSnapshot doc in reservationSnapshot.docs) {
        Reservation reservation =
            Reservation.fromJson(doc.data() as Map<String, dynamic>);
        DateTime dateKey = DateTime(
          reservation.reservationDate.year,
          reservation.reservationDate.month,
          reservation.reservationDate.day,
        );
        if (tempReservations.containsKey(dateKey)) {
          tempReservations[dateKey]!.add(reservation);
        } else {
          tempReservations[dateKey] = [reservation];
        }
      }

      reservationDates = tempReservations;
      state = state.copyWith(reservationList: reservationDates);
      state = state.copyWith();
    } catch (e) {
      logger.log(Level.trace, e);
    }
  }

  // 予約実行メソッド
  Future<bool> createReservation(Reservation reservation) async {
    try {
      // 予約情報をFirebaseに保存
      await reservations.add(reservation.toJson());

      await fetchReservations();

      return true;
    } catch (e) {
      logger.log(Level.trace, e);

      return false;
    }
  }

  // 予約をキャンセル
  Future<bool> cancelReservation(DateTime selectedDate) async {
    try {
      String formattedDate =
          DateFormat('yyyy-MM-ddTHH:mm:ss.SSS').format(selectedDate);

      debugPrint('Querying for date: $formattedDate');

      QuerySnapshot reservationSnapshot = await reservations
          .where('reservationDate', isEqualTo: formattedDate)
          .get();

      debugPrint('Found ${reservationSnapshot.docs.length} documents');

      for (QueryDocumentSnapshot doc in reservationSnapshot.docs) {
        await reservations.doc(doc.id).delete();
      }

      await fetchReservations();
      return true;
    } catch (e) {
      logger.log(Level.trace, e);
      return false;
    }
  }
}
