import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../web_api/models/payment_request_model.dart';
import '../web_api/repositories/payment_repository.dart';

final shoppingStateViewModelProvider =
    StateNotifierProvider<ShoppingStateViewModel, ShoppingState>((ref) {
  final paymentRepository = ref.read(paymentRepositoryProvider);
  return ShoppingStateViewModel(paymentRepository);
});

// ShoppingViewModelの状態クラスを作成
class ShoppingState {
  final AsyncValue<void> paymentStatus;

  ShoppingState({required this.paymentStatus});
}

// ShoppingViewModelを更新
class ShoppingStateViewModel extends StateNotifier<ShoppingState> {
  final PaymentRepository paymentRepository;

  ShoppingStateViewModel(this.paymentRepository)
      : super(ShoppingState(paymentStatus: const AsyncValue.data(null)));

  Future<void> uploadPaymentInfo({
    required int amount,
    required String currency,
    required String receiptEmail,
  }) async {
    state = ShoppingState(paymentStatus: const AsyncValue.loading());
    try {
      final paymentInfoRequest = PaymentRequestModel(
        amount: amount,
        currency: currency,
        receiptEmail: receiptEmail,
      );
      await paymentRepository.uploadCustomerInfo(
          paymentInfoRequest: paymentInfoRequest);
      state = ShoppingState(paymentStatus: const AsyncValue.data(null));
    } on DioException catch (e, stackTrace) {
      state = ShoppingState(paymentStatus: AsyncValue.error(e, stackTrace));
    }
  }
}

final shoppingViewModelProvider =
    StateNotifierProvider<ShoppingViewModel, void>((ref) {
  final paymentRepository = ref.read(paymentRepositoryProvider);
  return ShoppingViewModel(paymentRepository);
});

class ShoppingViewModel extends StateNotifier<void> {
  final PaymentRepository paymentRepository;

  ShoppingViewModel(this.paymentRepository) : super(null);

  Future<void> uploadPaymentInfo({
    required int amount,
    required String currency,
    required String receiptEmail,
  }) async {
    try {
      final paymentInfoRequest = PaymentRequestModel(
        amount: amount,
        currency: currency,
        receiptEmail: receiptEmail,
      );
      await paymentRepository.uploadCustomerInfo(
          paymentInfoRequest: paymentInfoRequest);
      // 追加の処理が必要であればここに記述
    } on DioException catch (_) {
      // エラーハンドリング
      rethrow;
    }
  }
}
