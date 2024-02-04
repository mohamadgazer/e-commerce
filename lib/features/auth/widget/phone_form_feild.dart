import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/features/auth/widget/auth_form_field.dart';
import 'package:installment/generated/l10n.dart';

class PhoneFormFeild extends StatelessWidget {
  final TextEditingController? controller;
  const PhoneFormFeild({
    super.key,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).phone_number,
            style: AppTextStyleManger.s12BookBlack),
        SizedBox(height: 12.h),
        Row(
          children: [
            const Flexible(
                flex: 1,
                child: AuthFormField(
                  hintText: "+200",
                )),
            SizedBox(width: 3.w),
            const Flexible(flex: 2, child: AuthFormField()),
          ],
        ),
      ],
    );
  }
}
