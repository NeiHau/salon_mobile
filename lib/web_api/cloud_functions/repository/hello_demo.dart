import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';

class CloudFunctionsDemo {
  static Future<void> callFunction() async {
    HttpsCallable callable =
        FirebaseFunctions.instanceFor(region: 'asia-northeast1')
            .httpsCallable('helloWorld');
    try {
      final result = await callable.call();

      debugPrint(result.data);
    } on FirebaseFunctionsException catch (e) {
      debugPrint(e.code);
      debugPrint(e.message);
      debugPrint(e.details);
    } catch (e) {
      rethrow;
    }
  }
}
