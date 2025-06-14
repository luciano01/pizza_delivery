import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app_routes.dart';
import '../../../core/core.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    _awaitAndGoToOnBoarding();
  }

  Future<void> _awaitAndGoToOnBoarding() async {
    await Future.delayed(Duration(seconds: 2));
    Get.offNamed(AppRoutes.onBoarding);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.doughBeige,
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: Stack(
          children: [
            BackgroundImage(),
            Center(
              child: Image.asset(
                AppImages.logo,
                width: 180.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
