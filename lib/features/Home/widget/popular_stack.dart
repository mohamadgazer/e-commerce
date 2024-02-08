import 'package:flutter/material.dart';
import 'package:installment/core/app_images_manger.dart';
import 'package:installment/core/helper/aliment.dart';
import 'package:installment/features/Home/widget/popular_now.dart';
import 'package:installment/generated/l10n.dart';

import '../../../core/app_text_style_manger.dart';

class PopularStack extends StatelessWidget {
  const PopularStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.bottomRight,
      alignment: alignmentHelper(context),
      children: [
        const PopularNow(),
        Image.asset(AppImageManger.home_01),
        Text(
          S.of(context).popular_now,
          style: AppTextStyleManger.s21BlackBlack,
        ),
      ],
    );
  }
}
