import 'package:flutter/material.dart';
import 'package:installment/core/app_images_manger.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/generated/l10n.dart';

class PopularNow extends StatelessWidget {
  const PopularNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          S.of(context).popular_now,
          style: AppTextStyleManger.s21BlackBlack,
        ),
        Image.asset(AppImageManger.home_01),
      ],
    );
  }
}
