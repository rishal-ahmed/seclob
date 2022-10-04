import 'package:flutter/material.dart';
import 'package:seclob/core/routes/routes.dart';
import 'package:seclob/presentation/screens/home/screen_home.dart';
import 'package:seclob/presentation/screens/main/screen_main.dart';
import 'package:seclob/presentation/screens/services/screen_all_services.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    // final Object? args = routeSettings.arguments;

    switch (routeSettings.name) {
      case routeRoot:
        return MaterialPageRoute(builder: (_) => const ScreenMain());
      case routeHome:
        return MaterialPageRoute(builder: (_) => const ScreenHome());
      case routeAllServices:
        return MaterialPageRoute(builder: (_) => const ScreenAllServices());
      default:
        return _errorRoute();
    }
  }

  //========== Error Page if Navigation goes wrong ==========
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text(
            'Error',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
