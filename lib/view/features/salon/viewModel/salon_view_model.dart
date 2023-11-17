import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../web_api/models/salon/salon_request_model.dart';
import '../../../../web_api/models/salon/salon_response_model.dart';
import '../../../../web_api/repositories/salon_repository.dart';

final salonResponseProvider = StateNotifierProvider.autoDispose<
    SalonResponseState, AsyncValue<SalonResponseModel>>(
  (ref) => SalonResponseState(ref),
);

class SalonResponseState extends StateNotifier<AsyncValue<SalonResponseModel>> {
  SalonResponseState(this._ref) : super(const AsyncValue.loading());

  final Ref _ref;

  Future<void> getSalonRecommendation(
      SalonRequestModel salonRequestModel) async {
    state = const AsyncValue.loading();
    try {
      final salonRepository = _ref.read(salonRepositoryProvider);
      final response = await salonRepository.getRecommendation(
          salonRequest: salonRequestModel);
      // 処理が成功した場合、取得したデータで状態を更新します。
      state = AsyncValue.data(response.data!);
    } on DioException catch (e) {
      // DioErrorが発生した場合、エラー状態を更新します。
      state = AsyncValue.error(e, StackTrace.current);
    } catch (e, stack) {
      // その他のエラーが発生した場合、エラー状態を更新します。
      state = AsyncValue.error(e, stack);
    }
  }
}
