class AppRoutes {
  const AppRoutes._();

  static const String splash = '/splash';

  static const String onboarding = '/onboarding';

  static const String auth = '/auth';
  static const String _login = '$auth/login';

  static const String register = '$auth/register';

  static const String loginEmail = '$_login/email';
  static const String loginPhone = '$_login/phone';
}
