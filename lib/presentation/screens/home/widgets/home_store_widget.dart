import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/sizes.dart';
import 'package:seclob/presentation/widgets/horizontal_listview_widget.dart';

class HomeStoreWidget extends StatelessWidget {
  const HomeStoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return HorizontalListviewWidget(
      title: 'Store',
      item: SizedBox(
        width: 25.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/man.png',
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
                      Text('Y15s',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: kWhite, fontSize: 14.sp)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FittedBox(
                              child: Text('23000/-',
                                  style: TextStyle(
                                      color: kYellow, fontSize: 14.sp))),
                          kWidth5,
                          FittedBox(
                              child: Text('26000/-',
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
