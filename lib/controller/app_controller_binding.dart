import 'package:apkmagang/controller/splash/splash_controller.dart';
import 'package:apkmagang/controller/user/user_controller.dart';
import 'package:get/get.dart';

class AppControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(UserController());
  }
}
