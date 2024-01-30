import 'package:flutter/material.dart';
import 'package:installment/core/theming/app_color.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final void Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Icon(
          icon,
          color: AppColorManger.greyDeeper,
        ));
  }
}
