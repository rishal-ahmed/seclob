import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/images.dart';
import 'package:seclob/core/constants/sizes.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Color(0XFF0F3F54), Color(0XFF267C5D)]),
        ),
      ),
      leading: Image.asset(kLogo),
      title: SizedBox(
        width: double.infinity,
        child: FractionallySizedBox(
          widthFactor: .60,
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Card(
                  color: kWhite,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 15,
                          color: kBlack,
                        ),
                        kWidth5,
                        Expanded(
                          child: Text(
                            'Palazhi, Kozhikode, 673631',
                            maxLines: 1,
                            style: TextStyle(fontSize: 14.sp),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      centerTitle: true,
      actions: [
        Builder(
          builder: (ctx) {
            return IconButton(
              splashRadius: 0.1,
              onPressed: () {
                Scaffold.of(ctx).openEndDrawer();
              },
              icon: Image.asset(kIconDrawer, color: kWhite, scale: 0.9),
              alignment: Alignment.centerRight,
            );
          },
        ),
        kWidth10
      ],
    );
  }

  @override
  Size get preferredSize =>
      Size(double.infinity, AppBar().preferredSize.height);
}
