import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/images.dart';
import 'package:seclob/presentation/widgets/horizontal_listview_widget.dart';

class HomeJobsWidget extends StatelessWidget {
  const HomeJobsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalListviewWidget(
      title: 'Jobs',
      item: ClipRRect(
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
                  kIconMan,
                  fit: BoxFit.cover,
                  height: double.infinity,
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Painter',
                  style: TextStyle(color: kBlack54, fontSize: 14.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
