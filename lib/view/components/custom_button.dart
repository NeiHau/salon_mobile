// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    required this.title,
    required this.onPressed,
    this.backgroundColor = AppColors.primaryGreen,
    this.width,
    Key? key,
  }) : super(key: key);

  final double _defaultWidth = 314.w;
  final String title;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  double? width;

  @override
  Widget build(BuildContext context) {
    width = width ?? _defaultWidth;

    return SizedBox(
      height: 50.h,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.primaryWhite,
          backgroundColor: backgroundColor,
          shadowColor: AppColors.transparentBlack,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Text(
          title,
          style: AppTextStyles.boldWhiteBody2,
        ),
      ),
    );
  }
}
