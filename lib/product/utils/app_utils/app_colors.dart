import 'package:flutter/material.dart' show Color,Colors;

enum AppColor {
  white,
  black,
  green,
  red,
  grey,
  black12,
  white10,
  transparent,
  scaffoldBackgorundColor,
}

extension AppColorExtension on AppColor {
  Color getColor() {
    switch (this) {
      case AppColor.white:
        return const Color(0xFFFFFFFF);
      case AppColor.black:
        return const Color(0xFF000000);
      case AppColor.green:
        return const Color(0xFF00FF00);
      case AppColor.red:
        return const Color(0xFFFF0000);
      case AppColor.grey:
        return const Color(0xFF808080);
      case AppColor.black12:
        return const Color(0xFF000000).withOpacity(0.12);
      case AppColor.white10:
        return const Color(0xFFFFFFFF).withOpacity(0.10);
      case AppColor.transparent:
        return Colors.transparent;
      case AppColor.scaffoldBackgorundColor:
        return const Color(0xFFFFFFFF);
    }
  }
}
