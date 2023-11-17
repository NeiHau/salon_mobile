import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../web_api/repositories/payment_repository.dart';
import '../model/payment_request_model.dart';

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
