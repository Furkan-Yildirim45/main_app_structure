import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main_app_structure/product/utils/app_utils/app_colors.dart';

class GeneralSnackbar {
  static void show({
    required String title,
    required String message,
    Color backgroundColor = Colors.green,
    Color textColor = Colors.white,
    SnackPosition position = SnackPosition.BOTTOM,
    Duration duration = const Duration(seconds: 4),
    EdgeInsets? margin = const EdgeInsets.all(8.0),
    EdgeInsets? padding = const EdgeInsets.all(16.0),
  }) {
    Get.snackbar(
      title,
      message,
      backgroundColor: backgroundColor,
      colorText: textColor,
      snackPosition: position,
      duration: duration,
      margin: margin,
      padding: padding,
      borderRadius: 8.0,
    );
  }

  static void showSuccess(String title, String message) {
    show(
      title: title,
      message: message,
      backgroundColor: AppColor.green.getColor(),
    );
  }

  static void showError(String title, String message) {
    show(
      title: title,
      message: message,
      backgroundColor: AppColor.red.getColor(),
    );
  }

  static void showWarning(String title, String message) {
    show(
      title: title,
      message: message,
      backgroundColor: AppColor.yellow.getColor(),
      textColor: Colors.black, // Sarı arka plan için siyah metin
    );
  }
}
