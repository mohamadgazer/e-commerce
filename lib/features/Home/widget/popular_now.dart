import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/generated/l10n.dart';

import 'popular_container.dart';

class PopularNow extends StatefulWidget {
  const PopularNow({
    super.key,
  });

  @override
  State<PopularNow> createState() => _PopularNowState();
}

class _PopularNowState extends State<PopularNow> {
  GlobalKey containerKey = GlobalKey();
  double containerWidth = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      updateContainerWidth();
    });
  }

  void updateContainerWidth() {
    setState(() {
      containerWidth = containerKey.currentContext?.size?.width ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).popular_now,
          style: AppTextStyleManger.s21BlackBlack,
        ),
        SizedBox(height: PH.h26),
        PopularContainer(
            containerKey: containerKey, containerWidth: containerWidth),
      ],
    );
  }
}
