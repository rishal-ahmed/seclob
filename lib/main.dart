import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/routes/route_generator.dart';
import 'package:seclob/core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Seclob',
          theme: ThemeData(primaryColor: primaryColor),
          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: routeRoot,
        );
      },
    );
  }
}
