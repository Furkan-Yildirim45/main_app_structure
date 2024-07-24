

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main_app_structure/product/utils/app_utils/app_colors.dart';
import 'package:main_app_structure/product/utils/app_utils/app_general.dart';
import 'package:main_app_structure/product/utils/app_utils/app_padding.dart';
import 'package:main_app_structure/product/utils/app_utils/app_radius.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.validator,
    this.onSaved,
    required this.controller,
    this.isPhoneNumber = false,
    this.onSubmit, this.color, this.focusNode,
  });

  final String hintText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String?)? onSubmit;
  final TextEditingController controller;
  final bool? isPhoneNumber;
  final Color? color;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPadding.instance.topNormal,
      decoration: BoxDecoration(
          color: color ?? AppColor.scaffoldBackgorundColor.getColor(),
          borderRadius: AppRadius.instance.largeBorderRadius,
          ),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            vertical: Get.height * 0.02,
            horizontal: Get.height * 0.03,
          ),
          hintStyle: context.appGeneral.textTheme.labelLarge
              ?.copyWith(color: AppColor.grey.getColor()),
          errorStyle: const TextStyle(height: 0),
          counterText: '',
          counterStyle: const TextStyle(height: 0),
        ),
        maxLength: isPhoneNumber ?? false ? 10 : null,
        keyboardType: isPhoneNumber ?? false
            ? TextInputType.phone
            : TextInputType.emailAddress,
        maxLines: 1,
        validator: validator,
        onSaved: onSaved,
        onFieldSubmitted: onSubmit, // Bu kısım submit işlemi için eklenmiştir
      ),
    );
  }
}

class CustomTextFieldForPassword extends StatelessWidget {
  const CustomTextFieldForPassword({
    super.key,
    required this.hintText,
    required this.validator,
    this.onSaved,
    required this.controller,
  });

  final String hintText;
  final String? Function(String?) validator;
  final void Function(String?)? onSaved;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomTextFieldController>(
      init: CustomTextFieldController(),
      global: false,
      builder: (customController) {
        return Container(
          margin: AppPadding.instance.topNormal,
          decoration: BoxDecoration(
              color: AppColor.scaffoldBackgorundColor.getColor(),
              borderRadius: AppRadius.instance.largeBorderRadius,
              ),
          child: Obx(() => TextFormField(
                controller: controller,
                cursorColor: Colors.black,
                obscureText: customController.isObscure.value,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: context.appGeneral.textTheme.labelLarge
                      ?.copyWith(color: AppColor.grey.getColor()),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: Get.height * 0.02,
                    horizontal: Get.height * 0.02,
                  ),
                  errorStyle: const TextStyle(height: 0),
                  suffixIcon: IconButton(
                    icon: Icon(
                        customController.isObscure.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: customController.isObscure.value
                            ? AppColor.softBackgroundColor.getColor()
                            : AppColor.grey.getColor()),
                    onPressed: customController.toggleObscure,
                  ),
                ),
                maxLines: 1,
                validator: validator,
                onSaved: onSaved,
              )),
        );
      },
    );
  }
}

class CustomTextFieldController extends GetxController {
  var isObscure = true.obs;

  void toggleObscure() {
    isObscure.value = !isObscure.value;
  }
}