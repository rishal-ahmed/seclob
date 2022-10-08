import 'package:flutter/material.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/images.dart';
import 'package:seclob/core/constants/paddings.dart';
import 'package:seclob/core/constants/sizes.dart';
import 'package:seclob/presentation/screens/services/widgets/location_filter.dart';
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
            child: Image.asset(kIconSearch, color: kWhite, fit: BoxFit.cover),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: kPaddingHome,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                LocationFilterWidget(),
                kHeight20,
                ServiceCategoryGrid()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ServiceCategoryGrid extends StatelessWidget {
  const ServiceCategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Laundary Services',
          style: TextStyle(color: kColorServiceText),
        ),
        kHeight10,
        // Expanded(
        //   child: GridView.builder(
        //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //           crossAxisCount: 4),
        //       itemBuilder: (context, index) {
        //         return GridTile(child: Image.asset(kIconServices));
        //       }),
        // )
      ],
    );
  }
}
