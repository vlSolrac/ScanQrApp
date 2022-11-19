import 'package:flutter/material.dart';

import 'package:qr/screens/screens.dart';

class AppRoutes {
  static String home = "home";
  static String maps = "maps";

  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.home: (p0) => const HomeScreen(),
    AppRoutes.maps: (p0) => const MapsScreen(),
  };
}
