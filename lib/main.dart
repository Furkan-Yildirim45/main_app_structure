import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:main_app_structure/product/navigator/navigate_route_items.dart';
import 'package:main_app_structure/product/navigator/navigator_controller.dart';
import 'package:main_app_structure/screen/example_screen.dart';
import 'package:main_app_structure/screen/unknown/unknown_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(Main());
}

class Main extends StatelessWidget {
  Main({super.key});
  final navigatorController = NavigatorController.instance;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: NavigatorRoutes.init,
      home: ExapmleScreen(),
      getPages: NavigatorRoutes().routes,
      unknownRoute: GetPage(
        name: NavigateRoutesItems.unknown.withSlash,
        page: () => const UnknownScreen(),
      ),
    );
  }
}
