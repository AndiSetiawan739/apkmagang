import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppUtils {
  void snackBarShow({
    required String message,
  }) {
    Get.snackbar('MyApp', message,
        backgroundColor: Colors.black54, colorText: Colors.white);
  }
}
