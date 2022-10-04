import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/images.dart';
import 'package:seclob/core/constants/paddings.dart';

final List _banners = [kIconBanner1, kIconBanner2, kIconBanner3];

class HomeAutoSliderBannerWidget extends StatelessWidget {
  const HomeAutoSliderBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingHome,
      child: CarouselSlider.builder(
        itemCount: _banners.length,
        itemBuilder: (context, index, realIndex) {
          return Container(
            margin: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(_banners[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        options: CarouselOptions(
          height: 15.h,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: false,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayInterval: const Duration(seconds: 2),
          viewportFraction: .9,
        ),
      ),
    );
  }
}
