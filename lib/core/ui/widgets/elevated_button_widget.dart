import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    this.label,
    this.backgroundColor,
    this.foregroundColor,
    this.isRightIcon = false,
    this.isGoogleSignIn = false,
    required this.onPressed,
    this.elevation = 2.0,
    this.borderColor,
    this.width,
  });

  final String? label;

  final Color? backgroundColor;

  final Color? foregroundColor;

  final bool isRightIcon;

  final VoidCallback? onPressed;

  final double elevation;

  final Color? borderColor;

  final bool isGoogleSignIn;

  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? context.width,
      height: 56.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.white,
          foregroundColor: foregroundColor ?? AppColors.white,
          disabledBackgroundColor: AppColors.grey,
          textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: elevation,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isGoogleSignIn) ...[
              Image.asset(
                AppImages.googleG,
                width: 20.0,
              ),
              SizedBox(width: AppSpacing.paddingS8),
            ],
            Text(
              label ?? '',
              style: AppTextStyles.labelButton.copyWith(
                color: foregroundColor,
              ),
            ),
            if (isRightIcon) ...[
              SizedBox(width: AppSpacing.paddingS8),
              Icon(Icons.arrow_forward, color: AppColors.white),
            ]
          ],
        ),
      ),
    );
  }
}
