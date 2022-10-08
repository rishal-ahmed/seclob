import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/images.dart';
import 'package:seclob/core/constants/paddings.dart';
import 'package:seclob/core/constants/sizes.dart';

class HomeVehicleServiceWiget extends StatelessWidget {
  const HomeVehicleServiceWiget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingHome,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Vehicle Services',
            style: TextStyle(color: kColorMainText, fontSize: 16.sp),
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
            SvgPicture.asset(kIconBike),
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
