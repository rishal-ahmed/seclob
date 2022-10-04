import 'package:flutter/material.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/images.dart';
import 'package:seclob/presentation/widgets/app_bar_widget.dart';

class ScreenAllServices extends StatelessWidget {
  const ScreenAllServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'All Services',
        actions: [
          FractionallySizedBox(
            heightFactor: .4,
            child: Image.asset(
              kIconSearch,
              color: kWhite,
              // height: 18,

              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
