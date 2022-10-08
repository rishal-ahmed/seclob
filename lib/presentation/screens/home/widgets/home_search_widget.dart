import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/images.dart';
import 'package:seclob/presentation/widgets/text_field_widget.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kGrey200,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.w),
        child: TextFeildWidget(
          inputBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            color: kGrey,
            width: .2,
          )),
          contentPadding: const EdgeInsets.all(8),
          isDense: true,
          hintText: 'Search anything....',
          prefixIcon: SvgPicture.asset(kIconSearch),
          fontSize: 15.sp,
        ),
      ),
    );
  }
}
