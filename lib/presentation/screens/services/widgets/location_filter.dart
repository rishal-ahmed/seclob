import 'package:flutter/material.dart';
import 'package:seclob/core/constants/colors.dart';
import 'package:seclob/core/constants/sizes.dart';
import 'package:seclob/presentation/widgets/text_field_widget.dart';

class LocationFilterWidget extends StatelessWidget {
  const LocationFilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildWidget(
      inputBorder: InputBorder.none,
      prefixIcon: const Icon(
        Icons.location_on_outlined,
        color: kColorMainIcon,
      ),
      controller:
          TextEditingController(text: 'Seclob pvt.ltd, Palazhi, Kozhikode'),
      color: primaryColor,
      suffixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                color: kGrey,
                width: 1,
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.vertical_align_bottom),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(maxHeight: 100, maxWidth: 100),
            ),
          ),
          kWidth10,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                color: kGrey,
                width: 1,
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.filter_list),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(maxHeight: 100, maxWidth: 100),
            ),
          )
        ],
      ),
    );
  }
}
