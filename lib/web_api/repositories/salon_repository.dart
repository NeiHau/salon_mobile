import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/dio_provider.dart';
import '../../utils/fuctions_response.dart';
import '../../utils/service_caller.dart';
import '../models/salon/salon_request_model.dart';
import '../models/salon/salon_response_model.dart';
import '../services/api_service.dart';

final salonRepositoryProvider = Provider(
  (ref) => SalonRepositoryImpl._(
    ref.watch(dioProvider),
  ),
);

abstract class SalonRepository {
  Future<FunctionsResponse<SalonResponseModel>> getRecommendation(
      {required SalonRequestModel salonRequest});
}

class SalonRepositoryImpl implements SalonRepository {
  SalonRepositoryImpl._(
    Dio dio,
  ) : _apiService = ApiService(dio);

  final ApiService _apiService;

  @override
  Future<FunctionsResponse<SalonResponseModel>> getRecommendation(
          {required SalonRequestModel salonRequest}) async =>
      serviceCaller(call: () => _apiService.getRecommendation(salonRequest));
}
