import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:salon/utils/dio_provider.dart';
import 'package:salon/utils/service_caller.dart';

import '../../utils/fuctions_response.dart';
import '../../view/features/shopping/model/payment_request_model.dart';
import '../services/api_service.dart';

final paymentRepositoryProvider = Provider(
  (ref) => PaymentRepositoryImpl._(
    ref.watch(dioProvider),
  ),
);

abstract class PaymentRepository {
  Future<FunctionsResponse<void>> uploadCustomerInfo(
      {required PaymentRequestModel paymentInfoRequest});
}

class PaymentRepositoryImpl implements PaymentRepository {
  PaymentRepositoryImpl._(
    Dio dio,
  ) : _apiService = ApiService(dio);

  final ApiService _apiService;

  @override
  Future<FunctionsResponse<void>> uploadCustomerInfo(
          {required PaymentRequestModel paymentInfoRequest}) async =>
      serviceCaller(
          call: () => _apiService.createPaymentIntent(paymentInfoRequest));
}
