import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_pages.dart';
import 'app_routes.dart';
import 'core/core.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.pizzaRed,
        ),
        useMaterial3: true,
      ),
      getPages: AppPages.routes,
      initialRoute: AppRoutes.launch,
    );
  }
}
