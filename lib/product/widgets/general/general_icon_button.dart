
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main_app_structure/API/services/icon_and_image_services.dart';
import 'package:main_app_structure/product/utils/app_utils/app_colors.dart';
import 'package:main_app_structure/product/utils/app_utils/app_radius.dart';
import 'package:main_app_structure/product/widgets/general/custom_elevated_button.dart';

class GeneralIconButton extends StatelessWidget {
  const GeneralIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final String icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      width: Get.height * 0.07,
      height: Get.height * 0.07,
      backgroundColor: AppColor.iconBackgroundColor.getColor(),
      shape: RoundedRectangleBorder(
        borderRadius: AppRadius.instance.normalBorderRadius,
      ),
      onPressed: onPressed,
      elevation: 0,
      child: Image.asset(
        AppIconUtility.getIconPath(icon),
        color: AppColor.softBackgroundColor.getColor(),
      ),
    );
  }
}