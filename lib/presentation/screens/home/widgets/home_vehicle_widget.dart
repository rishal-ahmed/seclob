import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/sizes.dart';

class HomeVehicleServiceWiget extends StatelessWidget {
  const HomeVehicleServiceWiget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Vehicle Services',
            style: TextStyle(color: Color(0XFF0F3F54)),
          ),
          kHeight15,
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  BoxTileWidget(),
                  kWidth10,
                  BoxTileWidget(),
                  kWidth10,
                  BoxTileWidget(),
                ],
              ),
              kHeight5,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  BoxTileWidget(),
                  kWidth10,
                  BoxTileWidget(),
                  kWidth10,
                  BoxTileWidget(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BoxTileWidget extends StatelessWidget {
  const BoxTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0XFF469289),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Image.asset('assets/images/bike.png'),
            kHeight5,
            FittedBox(
              child: Text(
                'Car Accessories',
                style: TextStyle(color: kWhite, fontSize: 14.sp),
              ),
            )
          ],
        ),
      ),
    );
  }
}