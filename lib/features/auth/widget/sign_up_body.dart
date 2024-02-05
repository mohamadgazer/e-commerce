import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/auth/widget/body_template.dart';
import 'package:installment/features/auth/widget/bottom_sign_up_widgets.dart';
import 'package:installment/features/auth/widget/hi_text.dart';
import 'package:installment/features/auth/widget/or_text.dart';
import 'package:installment/features/auth/widget/sign_up_input_form.dart';
import 'package:installment/features/auth/widget/sign_up_with_button_ui.dart';
import 'package:installment/features/auth/widget/welcom_to_text.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BodyTemplate(children: [
      // const SizedBox(height: 10),
      // HEAD TEXT
      const HiText(),
      const WelcomToText(),
      SizedBox(height: PH.h60),
      // LOGIN WITH BUTTONS
      const SignUpWithButtonUi(),
      // OR TEXT
      const OrText(),
      // *** TEXT FORM FEILD  AND LOGIN BUTTON
      const SignUpInputForm(),
      SizedBox(height: PH.h20),
      // FORGET PASSWORD AND SIGNUP BUTTONS
      const BottomSignUpWidgets(),
    ]);
  }
}
