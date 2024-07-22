import 'package:flutter/material.dart' show BorderRadius;
import 'package:main_app_structure/product/utils/app_utils/app_sizes.dart';

class AppRadius {
  static AppRadius? _instance;
  static AppRadius get instance => _instance ?? AppRadius();

  double get _valueSmall => AppSizes.instance.smallValue;
  double get _valueNormal => AppSizes.instance.normalValue;
  double get _valueMedium => AppSizes.instance.mediumValue;
  double get _valueLarge => AppSizes.instance.largeValue;

  BorderRadius get smallBorderRadius => BorderRadius.circular(_valueSmall);
  BorderRadius get normalBorderRadius => BorderRadius.circular(_valueNormal);
  BorderRadius get mediumBorderRadius => BorderRadius.circular(_valueMedium);
  BorderRadius get largeBorderRadius => BorderRadius.circular(_valueLarge);
}
