import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/images.dart';
import 'package:seclob/core/constants/paddings.dart';
import 'package:seclob/core/constants/sizes.dart';
import 'package:seclob/core/routes/routes.dart';
import 'package:seclob/presentation/screens/home/widgets/circle_tile_widget.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: kPaddingHome,
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [kColorGradient1, kColorGradient2]),
            borderRadius: BorderRadius.circular(20),
          ),
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    CircleTileWidget(image: kIconServices, title: 'Service'),
                    CircleTileWidget(image: kIconEnquiry, title: 'Enquiry'),
                    CircleTileWidget(image: kIconStore, title: 'Store'),
                    CircleTileWidget(image: kIconJobs, title: 'Job'),
                  ],
                ),
                kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleTileWidget(image: kIconNews, title: 'News'),
                    const CircleTileWidget(
                        image: kIconVehicleService, title: 'Vehicle Service'),
                    const CircleTileWidget(image: kIconEats, title: 'Eats'),
                    CircleTileWidget(
                      image: kIconMore,
                      title: 'More',
                      onTap: () =>
                          Navigator.pushNamed(context, routeAllServices),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
