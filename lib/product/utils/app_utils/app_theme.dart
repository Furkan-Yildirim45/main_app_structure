import 'package:flutter/material.dart';
import 'package:main_app_structure/product/utils/app_utils/app_colors.dart';

class ProjectTheme {
  late ThemeData theme;
  final String poppins = "poppins";

  ProjectTheme(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    theme = ThemeData(
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: mediaQuery.size.width * 0.11,
          // fontFamily: poppins,
        ),
        displayMedium: TextStyle(
          fontSize: mediaQuery.size.width * 0.1,
          // fontFamily: poppins,
        ),
        displaySmall: TextStyle(
          fontSize: mediaQuery.size.width * 0.06,
          // fontFamily: poppins,
        ),
        headlineLarge: TextStyle(
          fontSize: mediaQuery.size.width * 0.08,
          // fontFamily: poppins,
        ),
        headlineMedium: TextStyle(
          fontSize: mediaQuery.size.width * 0.06,
          // fontFamily: poppins,
        ),
        headlineSmall: TextStyle(
          fontSize: mediaQuery.size.width * 0.04,
          // fontFamily: poppins,
        ),
        titleLarge: TextStyle(
          fontSize: mediaQuery.size.width * 0.05,
          // fontFamily: poppins,
        ),
        titleMedium: TextStyle(
          fontSize: mediaQuery.size.width * 0.045,
          // fontFamily: poppins,
        ),
        titleSmall: TextStyle(
          fontSize: mediaQuery.size.width * 0.035,
          // fontFamily: poppins,
        ),
        bodyLarge: TextStyle(
          fontSize: mediaQuery.size.width * 0.04,
          // fontFamily: poppins,
        ),
        bodyMedium: TextStyle(
          fontSize: mediaQuery.size.width * 0.032,
          // fontFamily: poppins,
        ),
        bodySmall: TextStyle(
          fontSize: mediaQuery.size.width * 0.025,
          // fontFamily: poppins,
        ),
        labelLarge: TextStyle(
          fontSize: mediaQuery.size.width * 0.03,
          // fontFamily: poppins,
        ),
        labelMedium: TextStyle(
          fontSize: mediaQuery.size.width * 0.02,
          // fontFamily: poppins,
        ),
        labelSmall: TextStyle(
          fontSize: mediaQuery.size.width * 0.01,
          // fontFamily: poppins,
        ),
      ),
      scaffoldBackgroundColor: AppColor.scaffoldBackgorundColor.getColor(),
    );
  }
}
