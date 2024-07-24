
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main_app_structure/product/utils/app_utils/app_colors.dart';

class GeneralAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GeneralAppBar({
    super.key, required this.title, this.onPressed, 
  });

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: Get.height * 0.12,
      backgroundColor: AppColor.white.getColor(),
      elevation: 0,
      surfaceTintColor: AppColor.white.getColor(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(Get.height * 0.03),
          bottomRight: Radius.circular(Get.height * 0.03),
        ),
      ),
      leadingWidth: Get.height * 0.09,
      title: Text(
        title,
        style: TextStyle(
          color: AppColor.green.getColor(),
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Get.height * 0.12);
}