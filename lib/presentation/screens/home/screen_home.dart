import 'package:flutter/material.dart';
import 'package:seclob/core/constants/sizes.dart';
import 'package:seclob/presentation/screens/home/widgets/home_auto_slider_banner_widget.dart';
import 'package:seclob/presentation/screens/home/widgets/home_category_widget.dart';
import 'package:seclob/presentation/screens/home/widgets/home_eats_widget.dart';
import 'package:seclob/presentation/screens/home/widgets/home_jobs_widget.dart';
import 'package:seclob/presentation/screens/home/widgets/home_maintanance.dart';
import 'package:seclob/presentation/screens/home/widgets/home_most_used_services.dart';
import 'package:seclob/presentation/screens/home/widgets/home_search_widget.dart';
import 'package:seclob/presentation/screens/home/widgets/home_store_widget.dart';
import 'package:seclob/presentation/screens/home/widgets/home_vehicle_widget.dart';

import 'widgets/home_offer_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              //========== Search Field ==========
              HomeSearchWidget(),
              kHeight10,

              //========== Category Field ==========
              HomeCategoryWidget(),
              kHeight20,

              //========== Offer Field ==========
              HomeOfferWidget(),
              kHeight20,

              //========== Vehicle Field ==========
              HomeVehicleServiceWiget(),
              kHeight20,

              //========== Maintanance Field ==========
              HomeMaintananceWidget(),
              kHeight20,

              //========== Auto Slider Banner Field ==========
              HomeAutoSliderBannerWidget(),
              kHeight20,

              //========== Most Used Services Field ==========
              HomeMostUsedServices(),
              kHeight20,

              //========== Auto Slider Banner Field ==========
              HomeAutoSliderBannerWidget(),
              kHeight20,

              //========== Store Field ==========
              HomeStoreWidget(),
              kHeight20,

              //========== Eats Field ==========
              HomeEatsWidget(),
              kHeight20,

              //========== Jobs Field ==========
              HomeJobsWidget(),
              kHeight20,
            ],
          ),
        ),
      ),
    );
  }
}
