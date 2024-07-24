import 'package:flutter/material.dart';

class CustomGeneralDivider extends StatelessWidget {
  final Color? color;
  final double? thickness;
  final double? indent;
  final double? endIndent;
  final double? height;
  final EdgeInsetsGeometry? margin;

  const CustomGeneralDivider({
    super.key,
    this.color = Colors.grey,
    this.thickness = 1.0,
    this.indent = 0.0,
    this.endIndent = 0.0,
    this.height = 1.0,
    this.margin = const EdgeInsets.symmetric(vertical: 8.0),
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      child: Divider(
        color: color,
        thickness: thickness,
        indent: indent,
        endIndent: endIndent,
      ),
    );
  }
}
