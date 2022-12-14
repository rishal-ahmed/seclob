import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/images.dart';
import 'package:seclob/core/constants/sizes.dart';
import 'package:seclob/presentation/widgets/horizontal_listview_widget.dart';

class HomeEatsWidget extends StatelessWidget {
  const HomeEatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return HorizontalListviewWidget(
      title: 'Eats',
      item: SizedBox(
        width: 25.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                kIconMan,
                fit: BoxFit.cover,
                height: double.infinity,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 5.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: kColorMain2,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      )),
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Text('Biriyani',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: kWhite, fontSize: 14.sp)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FittedBox(
                              child: Text('100/-',
                                  style: TextStyle(
                                      color: kYellow, fontSize: 14.sp))),
                          kWidth5,
                          FittedBox(
                              child: Text('150/-',
                                  style: TextStyle(
                                      color: kWhite, fontSize: 12.sp))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
