import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/login/widget/bottom_auth_widgets.dart';
import 'package:installment/features/login/widget/hi_text.dart';
import 'package:installment/features/login/widget/login_input_form.dart';
import 'package:installment/features/login/widget/or_text.dart';
import 'package:installment/features/login/widget/sign_up_with_button_ui.dart';
import 'package:installment/features/login/widget/welcom_to_text.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: PaddingHelper.allAppw, vertical: PaddingHelper.allApph),

        // make scroll
        child: SingleChildScrollView(
          // List of Widget

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height: 10),
              // HEAD TEXT
              const HiText(),
              const WelcomToText(),
              SizedBox(height: PaddingHelper.sbH60),
              // LOGIN WITH BUTTONS
              const SignUpWithButtonUi(),
              // OR TEXT
              const OrText(),
              // *** TEXT FORM FEILD  AND LOGIN BUTTON
              const LoginInputForm(),
              SizedBox(height: PaddingHelper.sbH20),
              // FORGET PASSWORD AND SIGNUP BUTTONS
              const BottomAuthWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}
