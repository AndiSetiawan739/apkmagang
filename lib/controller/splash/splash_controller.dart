import 'package:apkmagang/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void next_activity() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(Routes.routeLogin);
    });
  }
}
