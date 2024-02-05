import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/generated/l10n.dart';

import 'popular_container_body.dart';
import 'popular_rate.dart';

class PopularContainer extends StatelessWidget {
  const PopularContainer({
    super.key,
    required this.containerKey,
    required this.containerWidth,
  });

  final GlobalKey<State<StatefulWidget>> containerKey;
  final double containerWidth;

  @override
  Widget build(BuildContext context) {
    return PopularContainerBody(
      containerKey: containerKey,
      containerWidth: containerWidth,
      children: [
        Text(
          S.of(context).home_popular,
          style: AppTextStyleManger.s21Blackwhite,
        ),
        SizedBox(height: PH.h18),
        const PopularRate(),
        SizedBox(height: PH.h25),
        Text(
          "data",
          style: AppTextStyleManger.s21Blackwhite,
        ),
      ],
    );
  }
}
