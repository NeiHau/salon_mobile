import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:riverpod/riverpod.dart';

import '../model/customer.dart';

final customerNotifierProvider =
    StateNotifierProvider<CustomerNotifier, Customer>((ref) {
  return CustomerNotifier();
});

class CustomerNotifier extends StateNotifier<Customer> {
  CustomerNotifier()
      : super(
          Customer(
            name: '',
            age: 0,
            date: DateTime.now(),
            description: '',
            imageUrl: '',
            id: '',
          ),
        );

  // 顧客情報
  final CollectionReference customers =
      FirebaseFirestore.instance.collection('customers');

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  // 顧客情報のマッピング
  Map<String, Customer> eventDetails = {};

  String? fileName; // 追加: ファイル名を保持する変数

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setAge(int age) {
    state = state.copyWith(age: age);
  }

  void setDate(DateTime date) {
    state = state.copyWith(date: date);
  }

  void setDescription(String description) {
    state = state.copyWith(description: description);
  }

  void setImageUrl(String url) {
    state = state.copyWith(imageUrl: url);
  }

  Future<void> pickDate(BuildContext context) async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (date != null) {
      setDate(date);
    }
  }

  void getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final File file = File(pickedFile.path);
      fileName = basename(file.path); // 追加: ファイル名を取得
      setImageUrl(file.path);

      // ファイル存在チェック
      if (await file.exists()) {
        await saveImageToFirebaseStorage();
      } else {
        debugPrint("File does not exist at path");
      }
    } else {
      debugPrint('No image selected.');
    }
  }

  Future<bool> saveCustomer() async {
    try {
      await customers.add({
        'name': state.name,
        'age': state.age,
        'date': state.date,
        'description': state.description,
        'imageUrl': state.imageUrl,
      });
      debugPrint("Successfully Customer Added");
      return true;
    } catch (e) {
      debugPrint("Failed to add customer: $e");
      return false;
    }
  }

  // Firebase Storageに画像データを保存
  Future<void> saveImageToFirebaseStorage() async {
    try {
      final Reference storageRef = FirebaseStorage.instance
          .ref()
          .child(fileName ?? "default_name.jpg"); // 保持しているファイル名を使用

      final File file = File(state.imageUrl);
      final UploadTask uploadTask = storageRef.putFile(file);

      await uploadTask.whenComplete(() async {
        final String downloadUrl = await storageRef.getDownloadURL();
        debugPrint("Image uploaded, download URL: $downloadUrl");
      });
    } catch (e) {
      debugPrint("Failed to upload image: $e");
    }
  }

  // 絞り込み検索
  Future<List<Customer>> fetchFilteredCustomers(String name) async {
    List<Customer> filteredCustomerList = [];

    try {
      final QuerySnapshot snapshot = await customers.get();
      for (var doc in snapshot.docs) {
        final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        final DateTime date = (data['date'] as Timestamp).toDate();
        final customer = Customer(
          id: doc.id,
          name: data['name'],
          age: data['age'],
          date: date,
          description: data['description'].toString(),
          imageUrl: data['imageUrl'].toString(),
        );

        if (name.isEmpty || customer.name.contains(name)) {
          filteredCustomerList.add(customer);
        }
      }
    } catch (e) {
      debugPrint("Failed to fetch all customers: $e");
    }

    return filteredCustomerList;
  }

  // 一覧取得
  Future<List<Customer>> fetchAllCustomers() async {
    List<Customer> customerList = [];

    try {
      final QuerySnapshot snapshot = await customers.get();
      for (var doc in snapshot.docs) {
        final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        final DateTime date = (data['date'] as Timestamp).toDate();
        final customer = Customer(
          id: doc.id,
          name: data['name'],
          age: data['age'],
          date: date,
          description: data['description'].toString(),
          imageUrl: data['imageUrl'].toString(),
        );

        customerList.add(customer);
      }

      customerList.sort((a, b) => b.date.compareTo(a.date));
    } catch (e) {
      debugPrint("Failed to fetch all customers: $e");
    }

    return customerList;
  }

  // カレンダーの日付と同じデータを取得
  Future<void> fetchDates() async {
    try {
      final QuerySnapshot snapshot = await customers.get();
      final Map<DateTime, List<String>> newEventDates = {};
      for (var doc in snapshot.docs) {
        final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        if (data.containsKey('date')) {
          final DateTime date = (data['date'] as Timestamp).toDate();
          final DateTime dateKey = DateTime(date.year, date.month, date.day);
          final customer = Customer(
            id: doc.id.toString(),
            name: data['name'],
            age: data['age'],
            date: date,
            description: data['description'].toString(),
            imageUrl: data['imageUrl'].toString(),
          );

          debugPrint(
              "Setting customer for docId ${doc.id}: ${customer.name}"); // 追加

          eventDetails[doc.id] = customer;
          state = state.copyWith(eventDetails: eventDetails);
          if (newEventDates.containsKey(dateKey)) {
            newEventDates[dateKey]!.add(doc.id);
          } else {
            newEventDates[dateKey] = [doc.id];
          }
        }
      }
      state = state.copyWith(eventDates: newEventDates);
    } catch (e) {
      debugPrint("Failed to fetch dates: $e");
    }
  }

  // データ削除
  Future<bool> deleteCustomer(String docId) async {
    try {
      await customers.doc(docId).delete();
      return true;
    } catch (e) {
      debugPrint('Failed to delete customer: $e');
      return false;
    }
  }

  void setupNotification() {
    _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // 通知が来たときの処理
    });
  }
}
