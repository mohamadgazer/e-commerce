import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/generated/l10n.dart';

import 'custom_material_button.dart';
import 'email_form_feild.dart';
import 'password_form_feild.dart';
import 'phone_form_feild.dart';

class SignUpInputForm extends StatelessWidget {
  const SignUpInputForm({
    super.key,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const EmailFormFeild(),
          SizedBox(
            height: PH.h20,
          ),
          const PhoneFormFeild(),
          // EMAIL FORM FEILD

          SizedBox(
            height: PH.h20,
          ),

          // PASSWORD FORM FEILD
          const PasswordFormFeild(),
          SizedBox(height: 40.h),

          // LOGIN BUTTON
          CustomMaterialButton(
            onPressed: () {},
            color: AppColorManger.primary,
            text: S.of(context).sign_up,
            redius: PH.br8,
          ),
        ],
      ),
    );
  }
}
