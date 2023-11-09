import 'dart:math';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class PushNotificationRepository {
  static Future<String?> getDeviceToken() async {
    String? token = await FirebaseMessaging.instance.getToken();
    // ここでトークンをサーバーに送信するなどの処理を行う
    return token;
  }

  // static void initialize() async {
  //   const AndroidInitializationSettings androidInitialize =
  //       AndroidInitializationSettings('@mipmap/ic_launcher');
  //   const DarwinInitializationSettings iOSInitialize =
  //       DarwinInitializationSettings(
  //     requestAlertPermission: false,
  //     requestBadgePermission: false,
  //     requestSoundPermission: false,
  //   );
  //   const InitializationSettings initializationSettings =
  //       InitializationSettings(
  //     android: androidInitialize,
  //     iOS: iOSInitialize,
  //   );
  //
  //   await _notificationsPlugin.initialize(
  //     initializationSettings,
  //     onDidReceiveNotificationResponse: (NotificationResponse details) async {
  //       // Handle notification tap
  //     },
  //   );
  // }

  static Future<void> showNotification(String title, String body) async {
    var androidInitialize =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var iOSInitialize = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification: (id, title, body, payload) async {},
    );
    var initializationSettings =
        InitializationSettings(android: androidInitialize, iOS: iOSInitialize);
    var localNotification = FlutterLocalNotificationsPlugin()
      ..initialize(initializationSettings);

    // 通知の詳細をセットアップ
    var androidDetails = const AndroidNotificationDetails(
      'channelId',
      'channelName',
      importance: Importance.max,
    );
    var iOSDetails = const DarwinNotificationDetails();
    var generalNotificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iOSDetails,
    );

    debugPrint("title: $title, body: $body");

    // ユニークな通知IDを生成する
    var notificationId = Random().nextInt(1000000);

    // 通知を表示
    await localNotification.show(
      notificationId,
      title, // 通知のタイトル
      body, // 通知の本文
      generalNotificationDetails,
    );
  }
}
