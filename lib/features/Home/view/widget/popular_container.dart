import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/generated/l10n.dart';

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
    return Container(
      key: containerKey,
      width: double.infinity,
      height: 192.h,
      decoration: BoxDecoration(
        color: AppColorManger.main,
        borderRadius: BorderRadius.circular(PH.borderReduoc32),
      ),
      child: Padding(
        padding: EdgeInsets.all(PH.all24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: containerWidth / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).home_popular,
                    style: AppTextStyleManger.s21Blackwhite,
                  ),
                  SizedBox(height: PH.h18),
                  Text(
                    S.of(context).hughlan_Workspaces,
                    style: AppTextStyleManger.s12BookgreyDeeper,
                  ),
                  SizedBox(height: PH.h25),
                  Text(
                    "data",
                    style: AppTextStyleManger.s21Blackwhite,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
