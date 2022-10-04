import 'package:flutter/material.dart';
import 'package:seclob/core/constants/colors.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    Key? key,
    required this.onPressed,
    this.isGradient = false,
    this.title,
  }) : super(key: key);

  final Function()? onPressed;
  final String? title;
  final bool isGradient;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xFF0F3F54),
              Color(0xFF1F6A5A),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(
            // minWidth: 88.0,
            minHeight: 36.0,
          ), // min sizes for Material buttons

          alignment: Alignment.center,
          child: Text(
            title ?? '',
            textAlign: TextAlign.center,
            style: const TextStyle(color: kWhite),
          ),
        ),
      ),
    );
  }
}
