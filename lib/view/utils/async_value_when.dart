import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../components/custom_button.dart';
import 'app_strings.dart';
import 'app_text_styles.dart';
import 'exception.dart';

/// WebApiのレスポンスによってViewの見え方を変更する拡張クラス
extension AsyncValueWidget<T> on AsyncValue<T> {
  Widget whenWidget({
    required BuildContext context,
    required Widget Function(T data) data,
    AsyncCallback? reload,
    Widget? loading,
    Widget Function(Object, StackTrace?)? error,
    double? loadingAndErrorHeight,
    EdgeInsets? loadingAndErrorPadding,
  }) {
    return when(
      loading: () => Container(
        height: loadingAndErrorHeight,
        padding: loadingAndErrorPadding,
        child: loading ??
            const Center(
              child: CircularProgressIndicator(),
            ),
      ),
      error: error ??
          (e, s) => Container(
                height: loadingAndErrorHeight,
                padding: loadingAndErrorPadding,
                child: _errorWidget(e, s, context, reload),
              ),
      data: data,
    );
  }

  Widget _errorWidget(
      Object e, StackTrace? s, BuildContext context, AsyncCallback? reload) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Gap(128.h),
          Center(
            child: Text(
              e is AsyncValueException
                  ? e.model?.errors != null
                      ? e.model?.detail ?? AppStrings.errorMessage
                      : ''
                  : '',
              textAlign: TextAlign.center,
              style: AppTextStyles.lightBlackBody2,
            ),
          ),
          Center(
            child: Text(
              errorMessage(e),
              textAlign: TextAlign.center,
              style: AppTextStyles.lightBlackBody2,
            ),
          ),
          Gap(24.h),
          // オフラインorタイムアウト
          if (reload != null &&
              e is AsyncValueException &&
              (e.dioExceptionType.isOffline ||
                  e.statusCode == '500' ||
                  e.statusCode == '504'))
            CustomButton(
              title: AppStrings.buttonReload,
              onPressed: () async => await reload.call(),
            )
          else if (Navigator.canPop(context))
            CustomButton(
              title: AppStrings.buttonBack,
              onPressed: () async => Navigator.pop(context),
            )
        ],
      ),
    );
  }

  String errorMessage(Object error) {
    if (error is AsyncValueException) {
      if (error.model?.errors != null) {
        return error.model?.errors!.entries.first.value as String;
      } else if (error.dioExceptionType.isOffline) {
        return AppStrings.offlineError;
      } else {
        return error.model?.detail ?? AppStrings.apiException;
      }
    } else {
      return error.toString();
    }
  }
}
