import 'package:get/get.dart';
import 'package:inscribly/controllers/controllers.dart';
import 'package:inscribly/utilities/utilities.dart';
import 'package:inscribly/views/views.dart';

class AppPages {
  static const String initialRoute = AppRoutes.splash;

  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: SplashView.new,
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: OnboardingView.new,
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.auth,
      page: AuthView.new,
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.register,
      page: RegisterView.new,
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.loginEmail,
      page: EmailLoginView.new,
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.loginPhone,
      page: PhoneLoginView.new,
      binding: AuthBinding(),
    ),
  ];
}
