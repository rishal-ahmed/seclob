import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/images.dart';
import 'package:seclob/presentation/widgets/horizontal_listview_widget.dart';

//==================== Most Used Services Card ====================
class HomeMostUsedServices extends StatelessWidget {
  const HomeMostUsedServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalListviewWidget(
      title: 'HomeMostUsedServices',
      horizontalPadding: 6.w,
      item: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 23.w,
              foregroundDecoration: const BoxDecoration(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Image.asset(
                          kIconElectrician,
                          fit: BoxFit.cover,
                          height: 16.w,
                        ),
                        Text(
                          'Electrician',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: kColorMainText, fontSize: 14.sp),
                        ),
                        Text(
                          'Seclob Service at Kochi',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: kColorText, fontSize: 11.sp),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: kColorMain2,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                    child: Text(
                      '20 minutes ago..',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: kWhite, fontSize: 11.sp),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
