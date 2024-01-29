import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/generated/l10n.dart';

class OrText extends StatelessWidget {
  const OrText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 22.h, bottom: 38.h),
      child: Center(
        child: Text(
          S.of(context).or,
          style: AppTextStyleManger.s12BookGreyDeep,
        ),
      ),
    );
  }
}
