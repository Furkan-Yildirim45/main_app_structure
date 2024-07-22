
import 'package:flutter/material.dart';
import 'package:main_app_structure/product/utils/app_utils/app_general.dart';

class UnknownScreen extends StatelessWidget {
  const UnknownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('404 - Not Found'),
      ),
      body: Center(
        child: Text(
          'Üzgünüz, bu sayfa incunabulum!',
          style: context.appGeneral.textTheme.labelLarge,
        ),
      ),
    );
  }
}