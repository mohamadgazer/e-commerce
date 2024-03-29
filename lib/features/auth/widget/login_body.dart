import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/auth/widget/login_input_form.dart';

import 'body_template.dart';
import 'bottom_auth_widgets.dart';
import 'hi_text.dart';
import 'login_with_button_ui.dart';
import 'or_text.dart';
import 'welcom_back_text.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Screen Padding
    return BodyTemplate(
      children: [
        // const SizedBox(height: 10),
        // HEAD TEXT
        const HiText(),
        const WelcomBackText(),
        SizedBox(height: PH.h60),
        // LOGIN WITH BUTTONS
        const LoginWithButtonUi(),
        // OR TEXT
        const OrText(),
        // *** TEXT FORM FEILD  AND LOGIN BUTTON
        const LoginInputForm(),
        SizedBox(height: PH.h20),
        // FORGET PASSWORD AND SIGNUP BUTTONS
        const BottomLoginWidgets(),
      ],
    );
  }
}
