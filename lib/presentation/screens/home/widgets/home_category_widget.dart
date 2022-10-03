import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/sizes.dart';
import 'package:seclob/presentation/screens/home/widgets/circle_tile_widget.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kColorGradient1, kColorGradient2]),
          borderRadius: BorderRadius.circular(20),
        ),
        width: 90.w,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CircleTileWidget(image: 'services.png', title: 'Service'),
                  CircleTileWidget(image: 'enquiry.png', title: 'Enquiry'),
                  CircleTileWidget(image: 'store.png', title: 'Store'),
                  CircleTileWidget(image: 'job.png', title: 'Job'),
                ],
              ),
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CircleTileWidget(image: 'news.png', title: 'News'),
                  CircleTileWidget(
                      image: 'vehicle_service.png', title: 'Vehicle Service'),
                  CircleTileWidget(image: 'eats.png', title: 'Eats'),
                  CircleTileWidget(image: 'more.png', title: 'More'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}