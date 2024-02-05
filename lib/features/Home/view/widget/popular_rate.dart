import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/generated/l10n.dart';

class PopularRate extends StatelessWidget {
  const PopularRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).hughlan_Workspaces,
          style: AppTextStyleManger.s12BookgreyDeeper,
        ),
        SizedBox(width: PH.),
        Text(
          "4.8",
          style: AppTextStyleManger.s12Blackwhite,
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
        )
      ],
    );
  }
}
