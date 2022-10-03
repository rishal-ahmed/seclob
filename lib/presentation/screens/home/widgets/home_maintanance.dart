import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/sizes.dart';

class HomeMaintananceWidget extends StatelessWidget {
  const HomeMaintananceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Home Maintanance',
              style: TextStyle(color: Color(0XFF0F3F54)),
            ),
            kHeight15,
            Flexible(
              child: SizedBox(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const HomeMaintananceCard();
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      kWidth10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeMaintananceCard extends StatelessWidget {
  const HomeMaintananceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              foregroundDecoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0XFFD9D9D9),
                    Colors.transparent,
                    Colors.transparent,
                    Color(0XFFD9D9D9),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0.1, 0.7, 1],
                ),
              ),
              child: Image.asset(
                'assets/images/man.png',
                fit: BoxFit.cover,
                height: double.infinity,
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'Painter',
                style: TextStyle(color: kBlack, fontSize: 14.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
