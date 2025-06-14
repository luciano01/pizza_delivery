import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/core.dart';

class StepTwoWidget extends StatelessWidget {
  const StepTwoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.motoboy,
          width: context.width * 0.9,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.paddingS20,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppConstants.onBoardingStepTwoTitle.toUpperCase(),
                  style: AppTextStyles.title,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: AppSpacing.paddingS10,
                ),
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: AppTextStyles.subtitle.copyWith(
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: AppConstants.onBoardingStepTwoTextBold1,
                        style: AppTextStyles.subtitle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.cheeseYellow,
                        ),
                      ),
                      TextSpan(
                        text: AppConstants.onBoardingStepTwoTextPart1,
                      ),
                      TextSpan(
                        text: AppConstants.onBoardingStepTwoTextBold2,
                        style: AppTextStyles.subtitle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.cheeseYellow,
                        ),
                      ),
                      TextSpan(
                        text: AppConstants.onBoardingStepTwoTextPart2,
                      ),
                      TextSpan(
                        text: AppConstants.onBoardingStepTwoTextBold3,
                        style: AppTextStyles.subtitle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.cheeseYellow,
                        ),
                      ),
                      const TextSpan(
                        text: AppConstants.onBoardingStepTwoTextPart3,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
