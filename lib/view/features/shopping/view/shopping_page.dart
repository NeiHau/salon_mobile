import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:gap/gap.dart';
import 'package:salon/view/utils/async_value_when.dart';

import '../../payment/payment_screen.dart';
import '../viewModel/shopping_view_model.dart';

class ShoppingPage extends ConsumerStatefulWidget {
  const ShoppingPage({super.key});

  @override
  ConsumerState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends ConsumerState<ShoppingPage> {
  final _formKey = GlobalKey<FormState>();
  final int _amount = 0;
  final String _currency = '';
  final String _receiptEmail = '';

  final _amountController = TextEditingController();
  final _currencyController = TextEditingController();
  final _receiptEmailController = TextEditingController();

  @override
  void dispose() {
    // コントローラを破棄してリソースを解放します。
    _amountController.dispose();
    _currencyController.dispose();
    _receiptEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final paymentNotifier = ref.watch(shoppingStateViewModelProvider.notifier);
    final paymentState = ref.watch(
        shoppingStateViewModelProvider.select((value) => value.paymentStatus));

    return Scaffold(
      appBar: AppBar(
        title: const Text('ショッピング'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: '金額'),
                    keyboardType: TextInputType.number,
                    controller: _amountController,
                    onSaved: (value) {
                      _amountController.text = value ?? '';
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: '通貨'),
                    controller: _currencyController,
                    onSaved: (value) {
                      _currencyController.text = value ?? '';
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'レシートメール'),
                    keyboardType: TextInputType.emailAddress,
                    controller: _receiptEmailController,
                    onSaved: (value) {
                      _receiptEmailController.text = value ?? '';
                    },
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState?.validate() ?? false) {
                  _formKey.currentState?.save();

                  final paymentIntentResponse =
                      paymentNotifier.uploadPaymentInfo(
                    amount: _amount,
                    currency: _currency,
                    receiptEmail: _receiptEmail,
                  );

                  // StripeのclientSecretを取得
                  final Map<String, dynamic> paymentIntentData =
                      jsonDecode(paymentIntentResponse as String);
                  final result = paymentIntentData['client_secret'];

                  // StripeのPaymentSheetを初期化
                  await Stripe.instance.initPaymentSheet(
                    paymentSheetParameters: SetupPaymentSheetParameters(
                      customFlow: true,
                      paymentIntentClientSecret: result,
                      customerEphemeralKeySecret: result['ephemeralKey'],
                      customerId: result['customer'],
                    ),
                  );

                  // PaymentSheetを表示
                  await Stripe.instance.presentPaymentSheet();
                }
              },
              child: const Text('支払う'),
            ),
            const SizedBox(height: 20),
            paymentState.whenWidget(
              context: context,
              data: (_) => const Text('支払いが完了しました'),
              loading: const CircularProgressIndicator(),
              error: (error, stackTrace) => Text('エラーが発生しました: $error'),
            ),
            Gap(30.h),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const PaymentSheetPage()),
                );
              },
              child: const Text('支払い画面へ'),
            ),
          ],
        ),
      ),
    );
  }
}
