
import 'package:educhamp/product/services/icon_and_image_services.dart' show AppIconUtility;
import 'package:educhamp/product/utils/const_utils/app_colors.dart' show AppColor, AppColorExtension;
import 'package:educhamp/product/utils/const_utils/app_radius.dart' show AppRadius;
import 'package:educhamp/product/widgets/general/custom_elevated_button.dart' show CustomElevatedButton;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      backgroundColor: AppColor.black.getColor(),
      shape: RoundedRectangleBorder(
        borderRadius: AppRadius.instance.normalBorderRadius,
      ),
      onPressed: onPressed,
      elevation: 0,
      child: Image.asset(
        AppIconUtility.getIconPath(icon),
        color: AppColor.black.getColor(),
      ),
    );
  }
}