import 'package:get/get.dart';
import 'package:zipense/app/modules/onboarding_module/onboarding_binding.dart';
import 'package:zipense/app/modules/onboarding_module/onboarding_page.dart';

import '../app/modules/splash_module/splash_binding.dart';
import '../app/modules/splash_module/splash_page.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initialRoute,
      page: () => const SplashPage(),
      binding: SplashPageBinding(),
    ),
    GetPage(
      name: Routes.onboarding,
      page: () => const OnboardingPage(),
      binding: OnboardingBinding(),
    ),
  ];
}
