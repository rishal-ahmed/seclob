import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/sizes.dart';

class CircleTileWidget extends StatelessWidget {
  const CircleTileWidget({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 25,
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
    );
  }
}
