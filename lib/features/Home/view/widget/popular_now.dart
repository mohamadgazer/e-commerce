import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/generated/l10n.dart';

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
        Container(
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
                      SizedBox(height: PH.h18),
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
        )
      ],
    );
  }
}
