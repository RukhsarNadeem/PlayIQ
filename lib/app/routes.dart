import 'package:get/get.dart';
import 'package:play_iq/views/forgot_password.dart';
import 'package:play_iq/views/login_screen.dart';
import 'package:play_iq/views/signup_screen.dart';
import 'package:play_iq/views/skip_screen.dart';
import 'package:play_iq/views/splash_screen.dart';

import '../views/check_email.dart';

class Routes {
  static const splash = '/splash';
  static const skip = '/skip';
  static const login = '/login';
  static const forgotPassword = '/forgot-password';
  static const signup = '/signup';
}

class AppRoutes {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.skip,
      page: () => SkipScreen(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
    ),
    GetPage(name: Routes.forgotPassword, page: () => ForgotPassword()),
    GetPage(
      name: Routes.signup,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: Routes.signup,
      page: () => CheckEmail(),
    ),
  ];
}
