import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../view/features/shopping/model/payment_request_model.dart';
import '../models/salon/salon_request_model.dart';
import '../models/salon/salon_response_model.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST("/pay/payment-intent")
  Future<void> createPaymentIntent(
      @Body() PaymentRequestModel paymentInfoRequest);

  @POST("/recommendation")
  Future<SalonResponseModel> getRecommendation(
      @Body() SalonRequestModel request);
}
