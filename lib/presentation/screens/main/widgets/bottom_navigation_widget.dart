import 'package:flutter/material.dart';
import 'package:seclob/core/constants/colors.dart';

final ValueNotifier<int> bottomNavChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return ValueListenableBuilder(
          valueListenable: bottomNavChangeNotifier,
          builder: (context, int newIndex, child) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                child: BottomNavigationBar(
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined),
                      activeIcon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person_add_outlined),
                      activeIcon: Icon(Icons.person_add),
                      label: 'Invite & Earn',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.list_alt_outlined),
                      activeIcon: Icon(Icons.list_alt),
                      label: 'Free Listing',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline),
                      activeIcon: Icon(Icons.person),
                      label: 'Account',
                    ),
                  ],
                  onTap: (int selectedIndex) {
                    bottomNavChangeNotifier.value = selectedIndex;
                  },
                  currentIndex: newIndex,
                  selectedItemColor: primaryColor,
                  unselectedItemColor: primaryColor,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: kWhite,
                  selectedFontSize: 13.0,
                  unselectedFontSize: 11.0,
                ),
              ),
            );
          });
    });
  }
}
