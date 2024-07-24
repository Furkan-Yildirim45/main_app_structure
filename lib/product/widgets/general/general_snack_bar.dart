
import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController generalSnackBar({String? message}){
  return Get.snackbar(
        "Uyarı!",
        message ?? "girdiğiniz bilgileri kontrol edin",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
}