import 'dart:developer';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class PaymentSheetPage extends HookWidget {
  const PaymentSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final payment = useState<PaymentIntent?>(null);
    return Scaffold(
      appBar: AppBar(title: Text(runtimeType.toString())),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('金額：${payment.value?.amount.toString()}'),
            Text('ステータス：${payment.value?.status.name.toString()}'),
            Text('日時：${payment.value?.created.toString()}'),
            ElevatedButton(
              onPressed: () async {
                try {
                  // 1. Cloud Functions 上で PaymentIntent を作成
                  final callable = FirebaseFunctions.instance
                      .httpsCallable('createPaymentIntent');
                  final result = await callable.call();
                  final data = result.data;

                  // 2. PaymentSheet を初期化
                  await Stripe.instance.initPaymentSheet(
                    paymentSheetParameters: SetupPaymentSheetParameters(
                      customFlow: true,
                      merchantDisplayName: 'Flutter Stripe Example',
                      paymentIntentClientSecret: data['paymentIntent'],
                      customerEphemeralKeySecret: data['ephemeralKey'],
                      customerId: data['customer'],
                    ),
                  );

                  // 3. PaymentSheet を表示
                  await Stripe.instance.presentPaymentSheet();

                  // 4. 決済を確定
                  await Stripe.instance.confirmPaymentSheetPayment();

                  // 5. 決済内容を取得
                  final paymentIntent = await Stripe.instance
                      .retrievePaymentIntent(data['paymentIntent']);
                  payment.value = paymentIntent;
                } on StripeException catch (e) {
                  final error = e.error;
                  switch (error.code) {
                    case FailureCode.Canceled:
                      log('キャンセルされました', error: e);
                      break;
                    case FailureCode.Failed:
                      log('エラーが発生しました', error: e);
                      break;
                    case FailureCode.Timeout:
                      log('タイムアウトが発生しました', error: e);
                      break;
                    default:
                      log('予期せぬエラーが発生しました', error: e);
                      break;
                  }
                } on FirebaseFunctionsException catch (e) {
                  log('エラーが発生しました', error: e);
                } catch (e) {
                  log('不明なエラーが発生しました', error: e);
                }
              },
              child: const Text('Show PaymentSheet'),
            ),
          ],
        ),
      ),
    );
  }
}
