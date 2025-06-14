import 'package:get/get.dart';

import 'app_routes.dart';
import 'features/presentation/presentation.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.launch,
      page: () => const LaunchScreen(),
    ),
    GetPage(
      name: AppRoutes.onBoarding,
      page: () => const OnBoardingScreen(),
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignUpScreen(),
    ),
  ];
}
