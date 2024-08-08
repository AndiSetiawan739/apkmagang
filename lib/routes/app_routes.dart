import 'package:apkmagang/modules/auth/forget_passwordscreen.dart';
import 'package:apkmagang/modules/auth/login_screen.dart';
import 'package:apkmagang/modules/auth/register_screen.dart';
import 'package:apkmagang/modules/splash/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static String routeSplash = '/';
  static String routeLogin = '/login';
  static String routeForgetPassword = '/forget-password';
  static String routeRegister = '/register';
}

AppRoutes() => [
      // SPLASH
      GetPage(
          name: Routes.routeSplash,
          page: () => const SplashScreen(),
          transition: Transition.fade),

      // LOGIN
      GetPage(
          name: Routes.routeLogin,
          page: () => const LoginScreen(),
          transition: Transition.fade),

      GetPage(
          name: Routes.routeForgetPassword,
          page: () => const ForgetPasswordscreen(),
          transition: Transition.fade),

      GetPage(
          name: Routes.routeRegister,
          page: () => const RegisterScreen(),
          transition: Transition.fade),
    ];
