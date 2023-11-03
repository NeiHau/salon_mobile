import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../models/payment_request_model.dart';
import '../models/salon/salon_request_model.dart';
import '../models/salon/salon_response_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'http://localhost:8080/api')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST("/pay/payment-intent")
  Future<void> createPaymentIntent(
      @Body() PaymentRequestModel paymentInfoRequest);

  @POST("/recommendation")
  Future<SalonResponseModel> getRecommendation(
      @Body() SalonRequestModel request);
}
