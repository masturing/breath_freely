import 'package:get/get.dart';

import '../modules/auth_screen/bindings/auth_screen_binding.dart';
import '../modules/auth_screen/views/auth_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/predict/bindings/predict_binding.dart';
import '../modules/predict/views/predict_view.dart';
import '../modules/result_predict/bindings/result_predict_binding.dart';
import '../modules/result_predict/views/result_predict_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_SCREEN,
      page: () => const AuthScreenView(),
      binding: AuthScreenBinding(),
    ),
    GetPage(
      name: _Paths.PREDICT,
      page: () => const PredictView(),
      binding: PredictBinding(),
    ),
    GetPage(
      name: _Paths.RESULT_PREDICT,
      page: () => const ResultPredictView(),
      binding: ResultPredictBinding(),
    ),
  ];
}
