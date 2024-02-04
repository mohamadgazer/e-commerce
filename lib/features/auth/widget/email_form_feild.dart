import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/features/auth/widget/auth_form_field.dart';
import 'package:installment/generated/l10n.dart';

class EmailFormFeild extends StatelessWidget {
  final TextEditingController? controller;
  const EmailFormFeild({
    super.key,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).enter_email, style: AppTextStyleManger.s12BookBlack),
        SizedBox(height: 12.h),
        // EMAIL FORM FEILD
        const AuthFormField(
          label: "Email",
          hintText: "excemple@excemple.com",
        ),
      ],
    );
  }
}
