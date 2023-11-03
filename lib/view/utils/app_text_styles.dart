// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import 'app_colors.dart';

class AppTextStyles {
  /// 数字以外
  static String? commonFontFamily({required TargetPlatform platform}) =>
      platform == TargetPlatform.iOS ? 'NotoSansJp' : null;

  static String? commonNumberFontFamily({required TargetPlatform platform}) =>
      platform == TargetPlatform.iOS ? 'Roboto' : null;

  static TextStyle lightBlackHeadline2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    color: AppColors.lightBlack,
  );

  static TextStyle darkGreenHeadline2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    color: AppColors.darkGreen,
  );

  static TextStyle boldHeadline3 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.sp,
    color: AppColors.primaryBlack,
  );

  static TextStyle headline3 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
    color: AppColors.primaryBlack,
  );

  static TextStyle boldGrayHeadline3 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
    color: AppColors.boldGray,
  );

  static TextStyle lightBlackHeadline3 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
    color: AppColors.lightBlack,
  );

  static TextStyle darkGreenHeadline3 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
    color: AppColors.darkGreen,
  );

  static TextStyle boldBody1 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: AppColors.primaryBlack,
  );

  static TextStyle lightSilverBody1 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColors.lightSilver,
  );

  static TextStyle body1 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColors.primaryBlack,
  );

  static TextStyle boldBlackBody2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.primaryBlack,
  );

  static TextStyle boldLightBlackBody2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.lightBlack,
  );

  static TextStyle boldTransparentLightBlackBody2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.transparentLightBlack,
  );

  static TextStyle boldPailBlackBody2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.pailBlack,
  );

  static TextStyle boldGreenBody2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.primaryGreen,
  );

  static TextStyle boldDarkGreenBody2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.darkGreen,
  );

  static TextStyle boldWhiteBody2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.primaryWhite,
  );

  static TextStyle boldHeavyBlackBody2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.heavyGray,
  );

  static TextStyle body2 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14.sp,
    color: AppColors.primaryBlack,
  );

  static TextStyle pailBlackBody2 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14.sp,
    color: AppColors.pailBlack,
  );

  static TextStyle lightBlackBody2 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14.sp,
    color: AppColors.lightBlack,
  );

  static TextStyle heavyBlackBody2 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14.sp,
    color: AppColors.heavyGray,
  );

  static TextStyle heavyGrayBody2 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14.sp,
    color: AppColors.heavyGray,
  );

  static TextStyle boldBlackCaption = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 11.sp,
    color: AppColors.primaryBlack,
  );

  static TextStyle boldLightBlackCaption = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 11.sp,
    color: AppColors.lightBlack,
  );

  static TextStyle boldPailBlackCaption = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 11.sp,
    color: AppColors.pailBlack,
  );

  static TextStyle boldTransparentLightBlackCaption = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 11.sp,
    color: AppColors.transparentLightBlack,
  );

  static TextStyle boldGreenCaption = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 11.sp,
    color: AppColors.primaryGreen,
  );

  static TextStyle boldOrangeCaption = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 11.sp,
    color: AppColors.orange,
  );

  static TextStyle boldWhiteCaption = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 11.sp,
    color: AppColors.primaryWhite,
  );

  static TextStyle darkGreenCaption = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 11.sp,
    color: AppColors.darkGreen,
    height: 1.h,
  );

  static TextStyle blackCaption = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 11.sp,
    color: AppColors.primaryBlack,
  );

  static TextStyle lightBlackCaption = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 11.sp,
    color: AppColors.lightBlack,
  );

  static TextStyle pailBlackCaption = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 11.sp,
    color: AppColors.pailBlack,
  );

  static TextStyle pailBlackCaptionOpacity60 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 11.sp,
    color: AppColors.pailBlack.withOpacity(0.6),
  );

  static TextStyle lightSilverCaption = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 11.sp,
    color: AppColors.lightSilver,
  );

  static TextStyle cherryRedCaption = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 11.sp,
    color: AppColors.cherryRed,
    height: 1.h,
  );

  static TextStyle boldWhiteTiny = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 8.sp,
    color: AppColors.primaryWhite,
  );

  static TextStyle boldLightBlackTiny = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 8.sp,
    color: AppColors.lightBlack,
  );

  static TextStyle boldGreenTiny = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 8.sp,
    color: AppColors.primaryGreen,
  );

  static TextStyle whiteTiny = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 8.sp,
    color: AppColors.primaryWhite,
  );

  static TextStyle lightSilverTiny = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 8.sp,
    color: AppColors.lightSilver,
  );

  static TextStyle lightBlackTiny = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 8.sp,
    color: AppColors.lightBlack,
  );

  static TextStyle transparentBlackTiny = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 8.sp,
    color: AppColors.transparentBlack,
  );

  static TextStyle blackTiny = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 8.sp,
    color: AppColors.primaryBlack,
  );

  static TextStyle pailBlackTiny = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 8.sp,
    color: AppColors.pailBlack,
  );
}
