import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/sizes.dart';

class HomeOfferWidget extends StatelessWidget {
  const HomeOfferWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          HomeOfferCard(),
          kWidth5,
          HomeOfferCard(),
        ],
      ),
    );
  }
}

class HomeOfferCard extends StatelessWidget {
  const HomeOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: const BoxDecoration(
                color: Color(0xFFFF8A00),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                border: Border(right: BorderSide.none),
              ),
              child: Row(
                children: [
                  Icon(Icons.smartphone, color: kWhite, size: 25.sp),
                  const Expanded(
                      child: Text('Mobile Recharge',
                          style: TextStyle(color: kWhite)))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: const BoxDecoration(
                color: Color(0xFFFFBD71),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                border: Border(right: BorderSide.none),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('2%',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: const Color(0XFF0F3F54),
                          fontSize: 23.sp,
                          fontWeight: FontWeight.bold)),
                  Text('Off',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 22.sp,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
