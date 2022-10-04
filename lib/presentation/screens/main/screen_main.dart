import 'package:flutter/material.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/presentation/screens/home/screen_home.dart';
import 'package:seclob/presentation/screens/main/widgets/bottom_navigation_widget.dart';
import 'package:seclob/presentation/widgets/app_bar_widget.dart';
import 'package:seclob/presentation/widgets/custom_materiral_button.dart';

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
      endDrawer: const HomeDrawerWidget(),
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: bottomNavChangeNotifier,
            builder: (context, int index, child) => _pages[index]),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}

class HomeDrawerWidget extends StatelessWidget {
  const HomeDrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: FractionallySizedBox(
        widthFactor: .9,
        child: ListView(
          children: [
            CustomMaterialButton(
              onPressed: () {},
              title: 'Login',
            ),
            CustomMaterialButton(
              onPressed: () {},
              title: 'Sign Up',
            ),
            const ListTile(
              leading: Icon(Icons.call_outlined, color: kBlack),
              title: Text('Contact Us'),
            ),
            const ListTile(
              leading: Icon(Icons.info_outlined, color: kBlack),
              title: Text('About Us'),
            ),
            const ListTile(
              leading: Icon(Icons.list_alt_outlined, color: kBlack),
              title: Text('Terms & Conditions'),
            ),
            const ListTile(
              leading: Icon(Icons.lock_outlined, color: kBlack),
              title: Text('Privacy Policy'),
            ),
          ],
        ),
      ),
    );
  }
}
