import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/core.dart';

class StepOneWidget extends StatelessWidget {
  const StepOneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.chef,
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
                  AppConstants.onBoardingStepOneTitle.toUpperCase(),
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
                      const TextSpan(
                        text: AppConstants.onBoardingStepOneTextPart1,
                      ),
                      TextSpan(
                        text: AppConstants.onBoardingStepOneTextBold1,
                        style: AppTextStyles.subtitle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.cheeseYellow,
                        ),
                      ),
                      TextSpan(
                        text: AppConstants.onBoardingStepOneTextPart2,
                      ),
                      TextSpan(
                        text: AppConstants.onBoardingStepOneTextBold2,
                        style: AppTextStyles.subtitle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.cheeseYellow,
                        ),
                      ),
                      TextSpan(
                        text: AppConstants.onBoardingStepOneTextPart3,
                      ),
                      TextSpan(
                        text: AppConstants.onBoardingStepOneTextBold3,
                        style: AppTextStyles.subtitle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.cheeseYellow,
                        ),
                      ),
                      const TextSpan(
                        text: AppConstants.onBoardingStepOneTextPart4,
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
