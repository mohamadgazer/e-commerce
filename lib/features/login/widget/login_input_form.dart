import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/login/widget/auth_form_field.dart';
import 'package:installment/generated/l10n.dart';

import 'custom_material_button.dart';

class LoginInputForm extends StatefulWidget {
  const LoginInputForm({
    super.key,
  });

  @override
  State<LoginInputForm> createState() => _LoginInputFormState();
}

class _LoginInputFormState extends State<LoginInputForm> {
  @override
  bool obscure = true;
  int i = 10;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).enter_email,
              style: AppTextStyleManger.s12BookBlack),
          SizedBox(height: 12.h),
          // EMAIL FORM FEILD
          const AuthFormField(
            label: "Email",
            hintText: "excemple@excemple.com",
          ),
          SizedBox(
            height: PaddingHelper.sbH20,
          ),

          // PASSWORD FORM FEILD
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
          SizedBox(height: 40.h),

          // LOGIN BUTTON
          CustomMaterialButton(
            color: AppColorManger.primary,
            text: S.of(context).log_In,
            redius: PaddingHelper.borderReduoc,
          ),
        ],
      ),
    );
  }
}
