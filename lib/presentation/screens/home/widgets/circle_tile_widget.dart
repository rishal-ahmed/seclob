import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/sizes.dart';

class CircleTileWidget extends StatelessWidget {
  const CircleTileWidget({
    Key? key,
    required this.image,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String image;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: CircleAvatar(
                // backgroundImage: AssetImage(image),
                radius: 25,
                child: SvgPicture.asset(image),
              ),
            ),
            kHeight5,
            FittedBox(
              child: Text(
                title,
                style: TextStyle(color: kWhite, fontSize: 14.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
