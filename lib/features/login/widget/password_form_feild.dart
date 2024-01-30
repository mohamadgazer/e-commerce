import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/features/login/widget/auth_form_field.dart';
import 'package:installment/generated/l10n.dart';

class PasswordFormFeild extends StatefulWidget {
  final TextEditingController? controller;
  const PasswordFormFeild({
    super.key,
    this.controller,
  });

  @override
  State<PasswordFormFeild> createState() => _PasswordFormFeildState();
}

class _PasswordFormFeildState extends State<PasswordFormFeild> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).password, style: AppTextStyleManger.s12BookBlack),
        SizedBox(height: 12.h),
        AuthFormField(
          label: "Password",
          hintText: "Enter Password",
          obsecureText: obscure,
          icon: obscure == true ? Icons.remove_red_eye_outlined : Icons.lock,
          onTap: () {
            obscure = !obscure;

            setState(() {});
          },
        ),
      ],
    );
  }
}
