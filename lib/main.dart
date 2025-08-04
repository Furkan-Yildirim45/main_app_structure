import 'package:educhamp/product/navigator/navigate_route_items.dart'
    show NavigateRoutesItems, NavigateRoutesItemsExtension, NavigatorRoutes;
import 'package:educhamp/product/navigator/navigator_controller.dart'
    show NavigatorController;
import 'package:educhamp/screen/unknown/unknown_screen.dart' show UnknownScreen;
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart'
    show GetMaterialApp;
import 'package:get/get_navigation/src/routes/get_route.dart' show GetPage;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await dotenv.load(fileName: ".env");
  runApp(Main());
}

class Main extends StatelessWidget {
  Main({super.key});
  final navigatorController = NavigatorController.instance;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: NavigatorRoutes.init,
      getPages: NavigatorRoutes().routes,
      unknownRoute: GetPage(
        name: NavigateRoutesItems.unknown.withSlash,
        page: () => const UnknownScreen(),
      ),
    );
  }
}
