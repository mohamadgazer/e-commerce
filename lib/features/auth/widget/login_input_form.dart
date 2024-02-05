import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/helper/context_helper.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/routing/routers.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/auth/widget/email_form_feild.dart';
import 'package:installment/features/auth/widget/password_form_feild.dart';
import 'package:installment/generated/l10n.dart';

import 'custom_material_button.dart';

class LoginInputForm extends StatelessWidget {
  const LoginInputForm({
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
            height: PH.sbH20,
          ),

          // PASSWORD FORM FEILD
          const PasswordFormFeild(),
          SizedBox(height: 40.h),

          // LOGIN BUTTON
          CustomMaterialButton(
            onPressed: () {
              context.pushReplacementNamed(Routes.home);
            },
            color: AppColorManger.primary,
            text: S.of(context).log_In,
            redius: PH.borderReduoc8,
          ),
        ],
      ),
    );
  }
}
