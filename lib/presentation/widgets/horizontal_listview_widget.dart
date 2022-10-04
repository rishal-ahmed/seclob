import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/paddings.dart';
import 'package:seclob/core/constants/sizes.dart';

class HorizontalListviewWidget extends StatelessWidget {
  const HorizontalListviewWidget({
    Key? key,
    required this.item,
    required this.title,
    this.horizontalPadding,
  }) : super(key: key);

  final Widget item;
  final String title;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: Padding(
        padding: horizontalPadding != null
            ? EdgeInsets.symmetric(horizontal: horizontalPadding!)
            : kPaddingHome,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: kColorMainText, fontSize: 16.sp),
            ),
            kHeight15,
            Flexible(
              child: SizedBox(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return item;
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
