import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app_routes.dart';
import '../../../core/core.dart';
import 'onboarding.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late final PageController _pageController;

  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: BackgroundImage(divider: 1.8),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppSpacing.paddingS50,
              ),
              child: Column(
                children: [
                  Image.asset(
                    AppImages.logo,
                    width: 80.0,
                  ),
                  Expanded(
                    child: PageView(
                      controller: _pageController,
                      physics: NeverScrollableScrollPhysics(),
                      onPageChanged: (index) {
                        setState(() {
                          pageIndex = index;
                        });
                      },
                      children: [
                        StepOneWidget(),
                        StepTwoWidget(),
                        StepThreeWidget(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppSpacing.paddingS50,
                      right: AppSpacing.paddingS50,
                    ),
                    child: _StepIndicatorWidget(
                      pageIndex: pageIndex,
                      onPressed: () {
                        setState(() {
                          if (pageIndex < 2) {
                            pageIndex++;

                            _pageController.nextPage(
                              duration: Duration(seconds: 1),
                              curve: Curves.easeIn,
                            );
                          } else {
                            Get.offNamed(AppRoutes.signIn);
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StepIndicatorWidget extends StatefulWidget {
  const _StepIndicatorWidget({
    required this.pageIndex,
    required this.onPressed,
  });

  final int pageIndex;

  final VoidCallback onPressed;

  @override
  _StepIndicatorWidgetState createState() => _StepIndicatorWidgetState();
}

class _StepIndicatorWidgetState extends State<_StepIndicatorWidget> {
  Color _getColor(int index) {
    return index <= widget.pageIndex ? AppColors.pizzaRed : AppColors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: List.generate(3, (index) {
            return Container(
              width: 10.0,
              height: 10.0,
              margin: index == 1
                  ? EdgeInsets.symmetric(horizontal: AppSpacing.paddingS10)
                  : EdgeInsets.zero,
              decoration: BoxDecoration(
                color: _getColor(index),
                shape: BoxShape.circle,
              ),
            );
          }),
        ),
        IconButtonWidget(
          icon: widget.pageIndex != 2 ? Icons.arrow_forward : Icons.check,
          backgroundColor: AppColors.pizzaRed,
          onPressed: widget.onPressed,
        ),
      ],
    );
  }
}
