
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';


class NavigatorRoutes {
  static const String init = "/";
  final List<GetPage<dynamic>>? routes = [
    // GetPage(name: NavigatorRoutes.init, page: () => ExapmleScreen(),transition: Transition.cupertino,transitionDuration: const Duration(milliseconds: 500),curve: Curves.easeInOut),
    // GetPage(name: NavigateRoutesItems.unknown.withSlash, page: () => const UnknownScreen(),transition: Transition.cupertino,transitionDuration: const Duration(milliseconds: 500),curve: Curves.easeInOut),
  ];
}

enum NavigateRoutesItems {
  init,
  splash,
  unknown,
}

extension NavigateRoutesItemsExtension on NavigateRoutesItems{
  String get withSlash => "/$name";
}