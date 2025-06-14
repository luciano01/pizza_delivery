import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/core.dart';

class StepThreeWidget extends StatelessWidget {
  const StepThreeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.party,
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
                  AppConstants.onBoardingStepThreeTitle.toUpperCase(),
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
                        text: AppConstants.onBoardingStepThreeTextBold1,
                        style: AppTextStyles.subtitle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.cheeseYellow,
                        ),
                      ),
                      TextSpan(
                        text: AppConstants.onBoardingStepThreeTextPart1,
                      ),
                      TextSpan(
                        text: AppConstants.onBoardingStepThreeTextBold2,
                        style: AppTextStyles.subtitle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.cheeseYellow,
                        ),
                      ),
                      TextSpan(
                        text: AppConstants.onBoardingStepThreeTextPart3,
                      ),
                      TextSpan(
                        text: AppConstants.onBoardingStepThreeTextBold3,
                        style: AppTextStyles.subtitle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.cheeseYellow,
                        ),
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
