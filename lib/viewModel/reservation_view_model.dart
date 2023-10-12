import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:salon/main.dart';
import 'package:salon/model/reservation.dart';

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
          ),
        );

  // 顧客情報
  final CollectionReference customers =
      FirebaseFirestore.instance.collection('customers');

  // 予約
  final CollectionReference reservations =
      FirebaseFirestore.instance.collection('reservations');

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

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
    } catch (e) {
      logger.log(Level.trace, e);
    }
  }

  // 予約実行メソッド
  Future<void> createReservation(Reservation reservation) async {
    try {
      // 予約情報をFirebaseに保存
      DocumentReference reservationRef =
          await reservations.add(reservation.toJson());
      // 顧客の予約リストに新しい予約を追加
      await customers.doc(reservation.customerId).update({
        'reservations': FieldValue.arrayUnion([reservationRef.id])
      });
      // 通知を送信
      await _firebaseMessaging.subscribeToTopic(reservationRef.id);
      // 通知メッセージを作成
      final message = RemoteMessage(
        threadId: reservationRef.id,
        notification: RemoteNotification(
            title: '予約完了', body: '${reservation.customerName}さん、予約が完了しました。'),
      );
      // 通知メッセージを送信
      // await FirebaseMessaging.instance.sendMessage(message: message);
      await fetchReservations();
    } catch (e) {
      logger.log(Level.trace, e);
    }
  }

  Future<bool> deleteReservation(String docId) async {
    try {
      await reservations.doc(docId).delete();
      return true;
    } catch (e) {
      logger.log(Level.trace, e);
      return false;
    }
  }
}
