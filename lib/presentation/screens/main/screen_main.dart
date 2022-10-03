import 'package:flutter/material.dart';
import 'package:seclob/presentation/screens/home/screen_home.dart';
import 'package:seclob/presentation/screens/main/widgets/bottom_navigation_widget.dart';
import 'package:seclob/presentation/widgets/app_bar_widget.dart';

final List _pages = [
  const ScreenHome(),
  const ScreenHome(),
  const ScreenHome(),
  const ScreenHome(),
];

class ScreenMain extends StatelessWidget {
  const ScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: bottomNavChangeNotifier,
            builder: (context, int index, child) => _pages[index]),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
